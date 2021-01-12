import 'package:flutter/widgets.dart';

class UserDetails with ChangeNotifier{
  int uid;
  String providerName;
  String credentialKey;
  String credentialPassword;

  UserDetails({this.uid, this.providerName, this.credentialKey, this.credentialPassword});


}