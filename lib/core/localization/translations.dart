import 'package:hiddify/core/localization/locale_preferences.dart';
import 'package:hiddify/gen/translations.g.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

export 'package:hiddify/gen/translations.g.dart';

part 'translations.g.dart';

@Riverpod(keepAlive: true)
Future<TranslationsEn> translations(TranslationsRef ref) async =>
    await ref.watch(localePreferencesProvider).build();
