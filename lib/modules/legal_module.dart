import 'package:fhcp/resources/constants.dart';
import 'package:fhcp/screens/legal_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../app_widget.dart';

class LegalModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router(Constants.initalRoute, child: (_, args) => LegalScreen()),
      ];

  static Inject get to => Inject<AppWidget>.of();
}
