import 'package:fhcp/resources/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_package/flutterprojectpackage.dart';
import 'package:flutter_project_package/tracers/tracers.dart' as Log;
import 'blocs/logging_bloc_delegate.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Log.t('AppWidget build()');
    if (!kReleaseMode) {
      BlocSupervisor.delegate = LoggingBlocDelegate();
    }
    return _modeTheme(context); //_modeTheme();
  }

  ModeTheme _modeTheme(BuildContext context) {
    Log.t('AppWidget _modeTheme()');
    return ModeTheme(
      themeDataFunction: (brightness) => (brightness == Brightness.light) ? ModeTheme.light : ModeTheme.dark,
      defaultBrightness: Brightness.dark,
      themedWidgetBuilder: (context, theme) {
        return _materialApp(context, theme);
      },
    );
  }

  Widget _materialApp(BuildContext context, ThemeData themeData) {
    Log.t('AppWidget _materialApp()');
    return MaterialApp(
      title: 'FHCP',
      theme: themeData,
      initialRoute: Constants.initalRoute,
      onGenerateRoute: Modular.generateRoute,
      navigatorKey: Modular.navigatorKey,
    );
  }
}
