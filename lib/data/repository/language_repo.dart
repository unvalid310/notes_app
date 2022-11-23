import 'package:flutter/material.dart';
import 'package:notes_app/data/model/response/language_model.dart';
import 'package:notes_app/util/app_constants.dart';

class LanguageRepo {
  List<LanguageModel> getAllLanguages({BuildContext context}) {
    return AppConstants.languages;
  }
}
