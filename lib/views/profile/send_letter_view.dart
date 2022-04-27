import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/send_letter_bloc/send_letter_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/image_file_model.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/form_input_with_text.dart';
import 'package:solfy_flutter/widgets/header_app_bar.dart';
import 'package:solfy_flutter/widgets/image_file_item_row.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';
import 'package:image_picker/image_picker.dart';

/// Экран "Написать письмо"
class SendLetterView extends StatefulWidget {
  SendLetterView();

  @override
  _SendLetterViewState createState() => _SendLetterViewState();
}

class _SendLetterViewState extends State<SendLetterView> {
  final _formGlobalKey = GlobalKey<FormBuilderState>();
  bool _validateMode = false;
  bool _sizeError = false;
  final ImagePicker _picker = ImagePicker();
  final List<ImageFileModel> _images = [];
  final TextEditingController _messageController = TextEditingController();
  late TextEditingController _emailController;

  @override
  void initState() {
    ModalHelpers.ftoast.init(context);
    final profileRepository = context.read<ProfileRepository>();
    _emailController = TextEditingController(text: profileRepository.profile?.email ?? "");
    super.initState();
  }

  @override
  void dispose() {
    _messageController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return BlocListener<SendLetterBloc, SendLetterState>(
      listener: (context, state) async {
        if (state is Loading) {
          ModalHelpers.showLoadingModal(context);
        }
        if (state is SentSuccess) {
          await context.router.root.pop();
          context.router.pop();
        }
        if (state is SentError) {
          await context.router.root.pop();
          if (state.errors != null) {
            ModalHelpers.showError(context, state.errors!);
          }
        }
      },
      child: Scaffold(
        appBar: HeaderAppBar(header: "write_message".tr()),
        body: FooterLayout(
          footer: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom == 0 ? 16 : 16,
              right: 16,
              left: 16,
              top: 16,
            ),
            child: LongButtonWithText(
              text: "send".tr(),
              onTap: () async {
                final isValid = _formGlobalKey.currentState?.validate() ?? false;
                double imagesSize = 0;
                _images.forEach((element) {
                  imagesSize += element.length;
                });
                final isSizeError = imagesSize > 15;
                if (isSizeError) {
                  ModalHelpers.showToastWithText("Объем файлов слишком большой");
                }
                setState(() {
                  _validateMode = true;
                  _sizeError = isSizeError;
                });
                if (isValid && !isSizeError) {
                  final email = _formGlobalKey.currentState?.fields["email"]?.value as String?;
                  final message = _formGlobalKey.currentState?.fields["message"]?.value as String?;
                  context
                      .read<SendLetterBloc>()
                      .add(SendLetter(email ?? "", message ?? "", _images));
                }
              },
            ),
          ),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: FormBuilder(
                      autovalidateMode: _validateMode
                          ? AutovalidateMode.onUserInteraction
                          : AutovalidateMode.disabled,
                      key: _formGlobalKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 12.h),
                          FormInputWithText(
                            "message",
                            validators: [
                              FormBuilderValidators.required(context,
                                  errorText: "Пожалуйста, заполните поле"),
                            ],
                            height: 88,
                            headerText: "your_message".tr(),
                          ),
                          SizedBox(height: 24.h),
                          Column(
                            children: _images
                                .map((img) => Padding(
                                      padding: const EdgeInsets.only(bottom: 20.0),
                                      child: ImageFileItem(
                                        image: img,
                                        length: 1,
                                        onTap: (image) {
                                          setState(() {
                                            _images.remove(image);
                                          });
                                        },
                                      ),
                                    ))
                                .toList(),
                          ),
                          _images.length < 5
                              ? GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () async {
                                    try {
                                      final image =
                                          await _picker.pickImage(source: ImageSource.gallery);
                                      if (image != null) {
                                        final size = (await image.length()) / 1024 / 1024;
                                        if (size > 15) {
                                          ModalHelpers.showFilesSizeErrorModel(context);
                                        } else {
                                          setState(() {
                                            _images.add(ImageFileModel(
                                              name: "file ${_images.length + 1}",
                                              image: image,
                                              length: size,
                                            ));
                                          });
                                        }
                                      }
                                    } catch (e) {
                                      await ModalHelpers.showFilesGoSettingsModal(context);
                                    }
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 2),
                                      Icon(
                                        SolfyIcons.plus,
                                        color: theme.colors.buttonPrimary,
                                        size: 14.r,
                                      ),
                                      SizedBox(width: 12),
                                      Text(
                                        "attach_an_image".tr(),
                                        style: theme.textStyles.clickableLetterSendText,
                                      ),
                                    ],
                                  ),
                                )
                              : SizedBox(),
                          SizedBox(height: 24.h),
                          Text("attachment_size_tip".tr(),
                              style: theme.textStyles.inputHeaderText.copyWith(
                                  color: _sizeError ? theme.colors.errorInputBorderColor : null)),
                          SizedBox(height: 24.h),
                          FormInputWithText(
                            "email",
                            validators: [
                              FormBuilderValidators.required(context,
                                  errorText: "Пожалуйста, заполните поле"),
                              FormBuilderValidators.email(context,
                                  errorText: "Заполните адрес в формате: your@email.com"),
                            ],
                            headerText: "email_address2".tr(),
                            hintUnderFormText: "we_ll_send_a_reply_to_this_address".tr(),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
