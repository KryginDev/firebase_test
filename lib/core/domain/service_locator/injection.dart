import 'package:firebase_tests/core/domain/service_locator/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
  usesNullSafety: false,
)
void configureDependencies() => $initGetIt(getIt);
