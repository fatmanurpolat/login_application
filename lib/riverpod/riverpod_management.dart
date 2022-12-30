import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_information/riverpod/login_riverpod.dart';

final loginRiverpod = ChangeNotifierProvider((_) => LoginRiverpod());
