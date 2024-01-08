import 'package:flutter/cupertino.dart';

class LoginVm extends ChangeNotifier{

  final emailC = TextEditingController();
  final passwordC = TextEditingController();

  bool isChecked = false;

  setIsChecked(bool newVal){
    isChecked = newVal;
    notifyListeners();
  }

}