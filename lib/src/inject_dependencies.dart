import 'package:flutter_meedu/meedu.dart';
import 'package:web_template/src/data/local/local_storage_api.dart';
import 'package:web_template/src/data/repositories_implementation/local_storage_repository_implementation.dart';
import 'package:web_template/src/domain/repositories/local_storage_repository.dart';


void injectDependencies() {
  // Shared Preferences Service
  Get.lazyPut<LocalStorageRepository>(
          () => LocalStorageRepositoryImplementation(
          LocalStorageAPI()
      )
  );
}