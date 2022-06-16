import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/personal_information_bloc/personal_information_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/api/profile/get_profile/get_profile_wallet_item_response.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/card_status.dart';
import 'package:solfy_flutter/widgets/header_app_bar.dart';
import 'package:solfy_flutter/widgets/personal_information_item.dart';

/// Экран "Персональная информация"
class PersonalInformationView extends StatefulWidget {
  const PersonalInformationView();

  @override
  _PersonalInformationViewState createState() =>
      _PersonalInformationViewState();
}

class _PersonalInformationViewState extends State<PersonalInformationView> {
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();
    ProfileRepository profileRepository = context.read<ProfileRepository>();

    return BlocBuilder<PersonalInformationBloc, PersonalInformationState>(
      builder: (context, state) {
        return Scaffold(
          appBar: HeaderAppBar(header: "Персональная информация"),
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      profileRepository.profile?.wallet?.status != "active"
                          ? CardStatus(
                              profileRepository.profile!.wallet!.getModel())
                          : SizedBox(),
                      profileRepository.profile?.wallet?.cards != null &&
                              profileRepository
                                      .profile?.wallet!.cards!.length !=
                                  0
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(height: 14.h),
                                Text(
                                  "Карта Solfy",
                                  style: theme.textStyles.profileTitleText,
                                ),
                                SizedBox(height: 4.h),
                                for (var card in profileRepository
                                    .profile!.wallet!.cards!)
                                  PersonalInformationItem(
                                    title: formatAsCardNumber(
                                      card.mask!,
                                      useSeparators: true,
                                    ),
                                    secondTitle: card.validity,
                                    subTitleColor:
                                        theme.colors.secondaryItemsColor,
                                    status: statusCard.active,
                                  ),
                                Divider(height: 14.h),
                              ],
                            )
                          : SizedBox(),
                      PersonalInformationItem(
                        title: formatAsCardNumber(
                          'title',
                          useSeparators: true,
                        ),
                        secondTitle: 'secondTitle',
                        subTitleColor: theme.colors.secondaryItemsColor,
                        status: statusCard.block,
                      ),
                      PersonalInformationItem(
                        title: formatAsCardNumber(
                          'title2',
                          useSeparators: true,
                        ),
                        secondTitle: 'secondTitle2',
                        subTitleColor: theme.colors.secondaryItemsColor,
                        status: statusCard.close,
                      ),
                      Text(
                        "Мои данные",
                        style: theme.textStyles.profileTitleText,
                      ),
                      SizedBox(height: 4.h),
                      PersonalInformationItem(
                        title: profileRepository.profile?.phone,
                        subTitle: "Телефон",
                      ),
                      PersonalInformationItem(
                        title: profileRepository.profile?.email,
                        onEditIconTap: () =>
                            ModalHelpers.showEmailChangeModal(context),
                        subTitle: "Email",
                        subTitleCaption:
                            profileRepository.profile?.emailIsConfirmed != null
                                ? !profileRepository.profile!.emailIsConfirmed!
                                    ? "ожидает подтверждения"
                                    : null
                                : null,
                        editIcon: true,
                      ),
                      PersonalInformationItem(
                        title: profileRepository.profile?.lastName,
                        isHidden: profileRepository.profile?.lastName == null,
                        subTitle: "last_name".tr(),
                      ),
                      PersonalInformationItem(
                        title: profileRepository.profile?.firstName,
                        isHidden: profileRepository.profile?.firstName == null,
                        subTitle: "first_name".tr(),
                      ),
                      PersonalInformationItem(
                        title: profileRepository.profile?.middleName,
                        isHidden: profileRepository.profile?.middleName == null,
                        subTitle: "Отчество",
                      ),
                      PersonalInformationItem(
                        title: profileRepository.profile?.dateOfBirth,
                        isHidden:
                            profileRepository.profile?.dateOfBirth == null,
                        subTitle: "date_of_birth".tr(),
                      ),
                      SizedBox(height: 24.h),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
