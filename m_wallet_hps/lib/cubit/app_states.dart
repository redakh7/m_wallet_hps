import 'package:m_wallet_hps/models/userModel.dart';

abstract class AppStates {}


class AppInitialStates extends AppStates {}
class AppChangeBottomNavStates extends AppStates {}
class AppLoadingInitialStates  extends AppStates {}



class AppLoginInitialStates  extends AppStates {}
class AppLoginLoadingStates  extends AppStates {}
class AppLoginSuccessStates  extends AppStates {
  final UserModel userModel;
  AppLoginSuccessStates(this.userModel);
}
class AppLoginErrorStates  extends AppStates {
  final String error;
  AppLoginErrorStates(this.error);
}