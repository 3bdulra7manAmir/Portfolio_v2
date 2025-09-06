import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/services/database/shared_preferences/shared_pref_initialization.dart';
import 'core/utils/bloc_observer.dart';
import 'main_app.dart';

  void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  /// [Bloc Observer]
  Bloc.observer = const SimpleBlocObserver();
  await SharedPrefInit.init();
  
  //App Run
  runApp(const Portfolio(),);
}