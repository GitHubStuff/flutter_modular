import 'package:fhcp/modules/legal_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_project_package/flutterprojectpackage.dart';
import 'package:flutter_project_package/tracers/tracers.dart' as Log;

class LegalScreen extends ModularStatelessWidget<LegalModule> {
  static const route = '/legalScreen';

  @override
  Widget build(BuildContext context) {
    Log.t('legalScreen build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('Title: legalScreen'),
      ),
      body: body(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget body(BuildContext context) {
    Log.t('legalScreen body()');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('legalScreen Template', style: Theme.of(context).textTheme.headline5),
          RaisedButton(
            child: Text('Toggle Mode'),
            onPressed: () {
              ModeTheme.of(context).toggleBrightness();
            },
          ),
          RaisedButton(
            child: Text('Next Screen'),
            onPressed: () {
              /// Navigator.push(context, MaterialPageRoute(builder: (context) => Berky()));
            },
          ),
        ],
      ),
    );
  }
}
