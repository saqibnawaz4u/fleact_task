import 'package:flutter/cupertino.dart';

class AddFamilyVm extends ChangeNotifier{
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