import 'package:flutter/cupertino.dart';

class UpdateProfileVm extends ChangeNotifier{
  final fullNameC=TextEditingController();
  final relationC=TextEditingController();
  final phoneC=TextEditingController();
  final dateOfBirthC=TextEditingController();


  String gender = 'Male';

  setGender(String val){
    gender = val;
    notifyListeners();
  }
}