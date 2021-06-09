import 'package:get/get.dart';

import 'localizations/ar.dart';
import 'localizations/en.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'ar': ar,
      };
}
