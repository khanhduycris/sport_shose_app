import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'data/repositories/authentication_repository.dart';
import 'features/authentication/screens/onboarding.dart';

void main() async {
  runApp(const App());
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await GetStorage.init();
  await Firebase.initializeApp().then((FirebaseApp value) => Get.put(AuthenticationRepository()));
}


