import 'package:common/di/common_dependencies.dart';
import 'package:core/di/dependency.dart';
import 'package:dependencies/di/dependency.dart';

class Injections {
  Future<void> initialize({
    required String baseUrl,
    required String socketBaseurl,
  }) async {
    _registerSharedDependencies(
      baseUrl: baseUrl,
      socketBaseUrl: socketBaseurl,
    );
    _registerDomains();
  }

  void _registerDomains() {
    // AuthenticationDependency();
    // DashboardDependency();
    // UserDependency();
    // BasicDependency();
    // OrderDependency();
    // TicketDependency();
    // CommonsDependency();
  }

  Future<void> _registerSharedDependencies({
    required String baseUrl,
    required String socketBaseUrl,
  }) async {
    await const SharedLibDependencies().registerCore();
    RegisterCoreModule(
      baseUrl: baseUrl,
      socketBaseUrl: socketBaseUrl,
    );
    CommonDependencies();
  }
}
