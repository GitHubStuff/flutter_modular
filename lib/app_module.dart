import 'package:fhcp/modules/legal_module.dart';
import 'package:fhcp/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_bloc.dart';
import 'app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppBloc()),
      ];

  @override
  List<Router> get routers => [
        Router(
          Constants.initalRoute,
          module: LegalModule(),
        )
      ];

  @override
  Widget get bootstrap => AppWidget();
}
