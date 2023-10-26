import 'package:shared_preferences/shared_preferences.dart';

import '../get_it/get_it.dart';

class SharedLibDependencies {
  const SharedLibDependencies();

  Future<void> registerCore() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sl.registerLazySingleton(() => sharedPreferences);
  }
}
