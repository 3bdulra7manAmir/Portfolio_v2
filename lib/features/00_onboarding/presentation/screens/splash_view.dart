import 'package:flutter/material.dart';

import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';
import '../../../../core/services/database/shared_preferences/shared_pref_manager.dart';
import '../../../../core/widgets/circular_indicator.dart';


class Splash extends StatefulWidget
{
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash>
{
  @override
  void initState()
  {
    super.initState();
    setFirstLaunch();
    //Future.delayed(const Duration(seconds: 9), () => AppRouter.router.pushReplacementNamed(AppRoutes.home),);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => AppRouter.router.pushReplacementNamed(AppRoutes.home),);
  }

  void setFirstLaunch()
  {
    SharedPrefManager().setFirstLaunch(0);
  }

  @override
  Widget build(BuildContext context) => 
    const Scaffold(body: CustomLoadingIndicator(),);
}