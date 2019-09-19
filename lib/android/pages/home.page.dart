import 'package:aog/android/widgets/calculate-form.widget.dart';
import 'package:aog/shared/logo.wigdet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatelessWidget {
  var _scaffoldkey = new GlobalKey<ScaffoldState>();
  var _formKey = GlobalKey<FormState>();
  var _alcoolCtrl = new MoneyMaskedTextController();
  var _gasCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Logo(),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: CalculateForm(
              formKey: _formKey,
              alcoolCtrl: _alcoolCtrl,
              gasCtrl: _gasCtrl,
              func: calculate,
            ),
          ),
        ],
      ),
    );
  }

  Function calculate(){
    double alc =
    double.parse(_alcoolCtrl.text.replaceAll(new RegExp(r'[,.]'),'')) / 100;

    double gas =
    double.parse(_gasCtrl.text.replaceAll(new RegExp(r'[,.]'),'')) / 100;
    double res = alc / gas;

    var message = "Melhor utilizar Gasolina!";
    if(res >= 0.7){
      message = "Melhor utilizar Gasolina";
    } else {
      message = "Melhor utilizar Alcool!";
    }

    final snackBar = SnackBar(
      content: Text(message),
    );
    _scaffoldkey.currentState.showSnackBar((snackBar));
    return null;
  }
}
