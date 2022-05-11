// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_localization_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$JobLocalizationViewModel on _JobLocalizationViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_JobLocalizationViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$_JobLocalizationViewModelBaseActionController =
      ActionController(name: '_JobLocalizationViewModelBase');

  @override
  void validateUsername() {
    final _$actionInfo = _$_JobLocalizationViewModelBaseActionController
        .startAction(name: '_JobLocalizationViewModelBase.validateUsername');
    try {
      return super.validateUsername();
    } finally {
      _$_JobLocalizationViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword() {
    final _$actionInfo = _$_JobLocalizationViewModelBaseActionController
        .startAction(name: '_JobLocalizationViewModelBase.validatePassword');
    try {
      return super.validatePassword();
    } finally {
      _$_JobLocalizationViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}

mixin _$JobLocalizationError on _JobLocalizationErrorBase, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_JobLocalizationErrorBase.hasErrors'))
          .value;

  final _$localizationAtom =
      Atom(name: '_JobLocalizationErrorBase.localization');

  @override
  String? get localization {
    _$localizationAtom.reportRead();
    return super.localization;
  }

  @override
  set localization(String? value) {
    _$localizationAtom.reportWrite(value, super.localization, () {
      super.localization = value;
    });
  }

  @override
  String toString() {
    return '''
localization: ${localization},
hasErrors: ${hasErrors}
    ''';
  }
}
