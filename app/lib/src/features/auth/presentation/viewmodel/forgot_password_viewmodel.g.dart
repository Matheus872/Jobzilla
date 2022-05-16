// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ForgotPasswordViewModel on _ForgotPasswordViewModelBase, Store {
  final _$emailAtom = Atom(name: '_ForgotPasswordViewModelBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_ForgotPasswordViewModelBase.isLoading');

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

  final _$_ForgotPasswordViewModelBaseActionController =
      ActionController(name: '_ForgotPasswordViewModelBase');

  @override
  void validateEmail() {
    final _$actionInfo = _$_ForgotPasswordViewModelBaseActionController
        .startAction(name: '_ForgotPasswordViewModelBase.validateEmail');
    try {
      return super.validateEmail();
    } finally {
      _$_ForgotPasswordViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
isLoading: ${isLoading}
    ''';
  }
}

mixin _$ForgotPasswordError on _ForgotPasswordErrorBase, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_ForgotPasswordErrorBase.hasErrors'))
          .value;

  final _$emailAtom = Atom(name: '_ForgotPasswordErrorBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$sendCodeAtom = Atom(name: '_ForgotPasswordErrorBase.sendCode');

  @override
  String? get sendCode {
    _$sendCodeAtom.reportRead();
    return super.sendCode;
  }

  @override
  set sendCode(String? value) {
    _$sendCodeAtom.reportWrite(value, super.sendCode, () {
      super.sendCode = value;
    });
  }

  @override
  String toString() {
    return '''
email: ${email},
sendCode: ${sendCode},
hasErrors: ${hasErrors}
    ''';
  }
}
