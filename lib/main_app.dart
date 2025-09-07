import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/i18n/generated/l10n.dart';
import '../config/router/app_router.dart';
import '../config/theme/theme_manager/themes.dart';
import 'config/i18n/localization_controller/localization_cubit.dart';
import 'config/theme/theme_controller/theme_cubit.dart';
import 'core/utils/cubit_states.dart';
import 'core/utils/functions/url_launcher/url_launcher_cubit.dart';

class Portfolio extends StatelessWidget
{
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const PortfolioDevicePreview();
  }
}


class PortfolioDevicePreview extends StatelessWidget
{
  const PortfolioDevicePreview({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return DevicePreview(
      enabled: false,
      builder: (context) => const PortfolioScreenUtil(),
    );
  }
}


class PortfolioScreenUtil extends StatelessWidget
{
  const PortfolioScreenUtil({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (context, child) => const PortfolioMultiProvider(),
    );
  }
}


class PortfolioMultiProvider extends StatelessWidget
{
  const PortfolioMultiProvider({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return MultiBlocProvider(
      providers:
      [
        BlocProvider(create: (_) => ThemeCubit()),
        BlocProvider(create: (_) => LocalizationCubit()),
        BlocProvider(create: (_) => UrlLauncherCubit()),
      ],
      child: const PortfolioMaterial(),
    );
  }
}


class PortfolioMaterial extends StatelessWidget {
  const PortfolioMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = context.select<ThemeCubit, ThemeMode>((cubit) {
      final state = cubit.state;
      return state is SuccessState<ThemeMode>
        ? state.data : ThemeMode.dark;
    });

    final locale = context.select<LocalizationCubit, Locale>((cubit) {
      final state = cubit.state;
      return state is SuccessState<Locale>
        ? state.data : const Locale('en');
    });

    return MaterialApp.router(
      routerConfig: AppRouter.router,

      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: locale,

      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      themeMode: themeMode,

      debugShowCheckedModeBanner: false,
    );
  }
}


