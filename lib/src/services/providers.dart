
import 'package:flutter_meedu/meedu.dart';
import 'package:web_template/src/providers/auth_provider.dart';


class GlobalProviders {
  static late SimpleProvider<AuthProvider> authProvider;

  static void configureProviders()  {
    authProvider = SimpleProvider(
          (ref) => AuthProvider(),
    );
  }
}