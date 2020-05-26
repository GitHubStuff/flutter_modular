import 'package:bloc/bloc.dart';
import 'package:flutter_project_package/tracers/tracers.dart' as Log;

class LoggingBlocDelegate extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    Log.t('${event.toString()}');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    Log.t('${transition.toString()}');
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    Log.e('${error.toString()}');
  }
}
