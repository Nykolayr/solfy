import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/bloc/language_changer_bloc/language_changer_bloc.dart';
import 'package:solfy_flutter/bloc/phone_number_bloc/phone_number_bloc.dart';
import 'package:solfy_flutter/bloc/pin_code_login_bloc/pin_code_login_bloc.dart';
import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/bloc/region_search_bloc/region_search_bloc.dart';
import 'package:solfy_flutter/helpers/cache_interceptor.dart';
import 'package:solfy_flutter/helpers/custom_scroll_behavior.dart';
import 'package:solfy_flutter/helpers/di_containers/main_container.dart';
import 'package:solfy_flutter/helpers/di_containers/initial_container.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/repository/account_repository.dart';
import 'package:solfy_flutter/repository/bank_repository.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart' as autoRouter;
import 'package:solfy_flutter/bloc/initial_bloc/initial_bloc.dart';
import 'package:solfy_flutter/repository/static_repository.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/services/database/client_search_db_service.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/views/onboarding/language_selector_view.dart';
import 'package:solfy_flutter/views/onboarding/phone_number_input_view.dart';
import 'package:solfy_flutter/views/onboarding/pin_code_login_view.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';

void main() async {
  // Инициализация контейнеров
  InitialContainer().initialise(Injector("Initial"));
  MainContainer().initialise(Injector());

  // Установка темы оверлея
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));

  // Инициализация локализации
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [Provider(create: (context) => AppTheme(context))],
      child: EasyLocalization(
        supportedLocales: [Locale('ru'), Locale('uz')],
        path: 'assets/translations',
        fallbackLocale: Locale('ru'),
        child: AnnotatedRegion(
          child: MyApp(),
          value: SystemUiOverlayStyle.dark,
        ),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final injector = Injector("Initial");
  final _appRouter = Injector("Initial").get<autoRouter.AppRouter>();
  final languageChangerBloc = LanguageChangerBloc();
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => injector.get<StaticRepository>(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => InitialBloc(
              injector.get<StaticRepository>(),
              injector.get<FlutterSecureStorage>(),
              languageChangerBloc,
            ),
          ),
          BlocProvider(
            create: (context) => languageChangerBloc,
          ),
          BlocProvider(
            create: (context) => RegionSearchBloc(
              Injector().get<ProfileRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => QuestionnaireBloc(
                Injector().get<BankRepository>(),
                Injector().get<ClientSearchDbService>(),
                Injector("Initial").get<StaticRepository>(),
                Injector().get<ProfileRepository>()),
          ),
        ],
        child: ScreenUtilInit(
          designSize: Size(360, 640),
          builder: (_) => MaterialApp.router(
            builder: (context, widget) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: widget!,
              );
            },
            scrollBehavior: MyCustomScrollBehavior(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            routerDelegate: _appRouter.delegate(),
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            title: 'Solfy',
            theme: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              scaffoldBackgroundColor: Colors.white,
              fontFamily: theme.fontFamily,
            ),
          ),
        ),
      ),
    );
  }
}

/// Энтрипоинт-виджет приложения
class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Future.microtask(() async {
      // Добавляем кеширующий обработчик к клиенту dio
      final dio = Injector("Initial").get<Dio>();
      if (dio.interceptors.isEmpty) {
        final cache = await CacheInterceptor().init();
        dio.interceptors.add(cache);
      }
      context.read<InitialBloc>().add(GetStaticContent());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<InitialBloc, InitialState>(
        listener: (context, state) {
          if (state is SuccessDownload) {
            context.read<InitialBloc>().add(ResolveFirstScreen());
          }
          if (state is SignUp) {
            if (state.locale != null) context.setLocale(state.locale!);
          }
          if (state is UnsuccessDownload) {
            ModalHelpers.showError(context, state.errors);
          }
        },
        builder: (context, state) {
          if (state is SignUp) {
            return BlocProvider(
              create: (context) => PhoneNumberBloc(
                Injector().get<AccountRepository>(),
                Injector("Initial").get<FlutterSecureStorage>(),
              ),
              child: PhoneNumberInputView(),
            );
          }
          if (state is SignIn) {
            return BlocProvider(
              create: (context) => PinCodeLoginBloc(
                Injector().get<ProfileRepository>(),
                Injector().get<AccountRepository>(),
                Injector("Initial").get<FlutterSecureStorage>(),
              ),
              child: PinCodeLoginView(),
            );
          }
          if (state is PickLanguage) {
            return LanguageSelectorView();
          }
          return SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Lottie.asset(
                  'assets/welcome.json',
                  repeat: false,
                  width: 190.r,
                  height: 190.r,
                ),
                Column(
                  children: [
                    const LoadingRingAnimation(),
                    SizedBox(height: 24.h),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
