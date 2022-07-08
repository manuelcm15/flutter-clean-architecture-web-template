import 'package:flutter_meedu/meedu.dart';
import 'package:web_template/src/domain/repositories/local_storage_repository.dart';
import 'package:web_template/src/services/navigation_service.dart';


import '../router/router.dart';

enum AuthStatus {
  checking,
  authenticated,
  notAuthenticated
}

class AuthProvider extends SimpleNotifier {
  AuthStatus authStatus = AuthStatus.checking;
  String _token = "dWCNTUVUBARAOVrasmakmck";
  final _localStorageRepository = Get.find<LocalStorageRepository>();

  AuthProvider() {
    this.isAuthenticated();
  }

  login( String email, String password ) async{
    authStatus = AuthStatus.authenticated;
    final i = await _localStorageRepository.setString("token", _token);
    print("se guardo: $i");
    NavigationService.replaceTo(Flurorouter.dashboardRoute);
    notify();
  }

  register( String email, String password, String name ) {

  }

  Future<bool> isAuthenticated() async {
    await Future.delayed(Duration(seconds: 6));
    final token = await _localStorageRepository.getString("token");
    print("tokenWWW: $token");
    if( token == null ) {
      authStatus = AuthStatus.notAuthenticated;
      NavigationService.replaceTo(Flurorouter.loginRoute);
      notify();
      return false;
    }
    authStatus = AuthStatus.authenticated;
    NavigationService.replaceTo(Flurorouter.dashboardRoute);
    notify();
    return true;
  }


  logout() {

  }

}