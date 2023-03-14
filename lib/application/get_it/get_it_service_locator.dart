import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'get_it_service_locator.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies([String? env]) async => await $initGetIt(
      getIt,
      environment: env ?? (kDebugMode ? 'dev' : 'prod'),
    );
