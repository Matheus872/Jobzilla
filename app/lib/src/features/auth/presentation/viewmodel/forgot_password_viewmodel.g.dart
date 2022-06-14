// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ForgotPasswordViewModel on _ForgotPasswordViewModelBase, Store {
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

  final _$newPasswordAtom =
      Atom(name: '_ForgotPasswordViewModelBase.newPassword');

  @override
  String get newPassword {
    _$newPasswordAtom.reportRead();
    return super.newPassword;
  }

  @override
  set newPassword(String value) {
    _$newPasswordAtom.reportWrite(value, super.newPassword, () {
      super.newPassword = value;
    });
  }

  final _$newPasswordConfirmationAtom =
      Atom(name: '_ForgotPasswordViewModelBase.newPasswordConfirmation');

  @override
  String get newPasswordConfirmation {
    _$newPasswordConfirmationAtom.reportRead();
    return super.newPasswordConfirmation;
  }

  @override
  set newPasswordConfirmation(String value) {
    _$newPasswordConfirmationAtom
        .reportWrite(value, super.newPasswordConfirmation, () {
      super.newPasswordConfirmation = value;
    });
  }

  final _$pinCodeAtom = Atom(name: '_ForgotPasswordViewModelBase.pinCode');

  @override
  String get pinCode {
    _$pinCodeAtom.reportRead();
    return super.pinCode;
  }

  @override
  set pinCode(String value) {
    _$pinCodeAtom.reportWrite(value, super.pinCode, () {
      super.pinCode = value;
    });
  }

  final _$verificationCodeAtom =
      Atom(name: '_ForgotPasswordViewModelBase.verificationCode');

  @override
  String? get verificationCode {
    _$verificationCodeAtom.reportRead();
    return super.verificationCode;
  }

  @override
  set verificationCode(String? value) {
    _$verificationCodeAtom.reportWrite(value, super.verificationCode, () {
      super.verificationCode = value;
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
  String validateEmailMessage() {
    final _$actionInfo = _$_ForgotPasswordViewModelBaseActionController
        .startAction(name: '_ForgotPasswordViewModelBase.validateEmailMessage');
    try {
      return super.validateEmailMessage();
    } finally {
      _$_ForgotPasswordViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateNewPassword() {
    final _$actionInfo = _$_ForgotPasswordViewModelBaseActionController
        .startAction(name: '_ForgotPasswordViewModelBase.validateNewPassword');
    try {
      return super.validateNewPassword();
    } finally {
      _$_ForgotPasswordViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateNewPasswordConfirmation() {
    final _$actionInfo =
        _$_ForgotPasswordViewModelBaseActionController.startAction(
            name:
                '_ForgotPasswordViewModelBase.validateNewPasswordConfirmation');
    try {
      return super.validateNewPasswordConfirmation();
    } finally {
      _$_ForgotPasswordViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePinCode() {
    final _$actionInfo = _$_ForgotPasswordViewModelBaseActionController
        .startAction(name: '_ForgotPasswordViewModelBase.validatePinCode');
    try {
      return super.validatePinCode();
    } finally {
      _$_ForgotPasswordViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String validatePinCodeMessage() {
    final _$actionInfo =
        _$_ForgotPasswordViewModelBaseActionController.startAction(
            name: '_ForgotPasswordViewModelBase.validatePinCodeMessage');
    try {
      return super.validatePinCodeMessage();
    } finally {
      _$_ForgotPasswordViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
email: ${email},
newPassword: ${newPassword},
newPasswordConfirmation: ${newPasswordConfirmation},
pinCode: ${pinCode},
verificationCode: ${verificationCode}
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
  Computed<bool>? _$hasErrorsOnResetingComputed;

  @override
  bool get hasErrorsOnReseting => (_$hasErrorsOnResetingComputed ??=
          Computed<bool>(() => super.hasErrorsOnReseting,
              name: '_ForgotPasswordErrorBase.hasErrorsOnReseting'))
      .value;
  Computed<bool>? _$hasErrorsOnPinCodeComputed;

  @override
  bool get hasErrorsOnPinCode => (_$hasErrorsOnPinCodeComputed ??=
          Computed<bool>(() => super.hasErrorsOnPinCode,
              name: '_ForgotPasswordErrorBase.hasErrorsOnPinCode'))
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

  final _$newPasswordAtom = Atom(name: '_ForgotPasswordErrorBase.newPassword');

  @override
  String? get newPassword {
    _$newPasswordAtom.reportRead();
    return super.newPassword;
  }

  @override
  set newPassword(String? value) {
    _$newPasswordAtom.reportWrite(value, super.newPassword, () {
      super.newPassword = value;
    });
  }

  final _$newPasswordConfirmationAtom =
      Atom(name: '_ForgotPasswordErrorBase.newPasswordConfirmation');

  @override
  String? get newPasswordConfirmation {
    _$newPasswordConfirmationAtom.reportRead();
    return super.newPasswordConfirmation;
  }

  @override
  set newPasswordConfirmation(String? value) {
    _$newPasswordConfirmationAtom
        .reportWrite(value, super.newPasswordConfirmation, () {
      super.newPasswordConfirmation = value;
    });
  }

  final _$pinCodeAtom = Atom(name: '_ForgotPasswordErrorBase.pinCode');

  @override
  String get pinCode {
    _$pinCodeAtom.reportRead();
    return super.pinCode;
  }

  @override
  set pinCode(String value) {
    _$pinCodeAtom.reportWrite(value, super.pinCode, () {
      super.pinCode = value;
    });
  }

  @override
  String toString() {
    return '''
email: ${email},
sendCode: ${sendCode},
newPassword: ${newPassword},
newPasswordConfirmation: ${newPasswordConfirmation},
pinCode: ${pinCode},
hasErrors: ${hasErrors},
hasErrorsOnReseting: ${hasErrorsOnReseting},
hasErrorsOnPinCode: ${hasErrorsOnPinCode}
    ''';
  }
}
