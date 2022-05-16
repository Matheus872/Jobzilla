// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignUpViewModel on _SignUpViewModelBase, Store {
  final _$usernameAtom = Atom(name: '_SignUpViewModelBase.username');

  @override
  String get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  final _$passwordAtom = Atom(name: '_SignUpViewModelBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$passwordConfirmationAtom =
      Atom(name: '_SignUpViewModelBase.passwordConfirmation');

  @override
  String get passwordConfirmation {
    _$passwordConfirmationAtom.reportRead();
    return super.passwordConfirmation;
  }

  @override
  set passwordConfirmation(String value) {
    _$passwordConfirmationAtom.reportWrite(value, super.passwordConfirmation,
        () {
      super.passwordConfirmation = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_SignUpViewModelBase.isLoading');

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

  final _$_SignUpViewModelBaseActionController =
      ActionController(name: '_SignUpViewModelBase');

  @override
  void validateUsername() {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction(
        name: '_SignUpViewModelBase.validateUsername');
    try {
      return super.validateUsername();
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword() {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction(
        name: '_SignUpViewModelBase.validatePassword');
    try {
      return super.validatePassword();
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePasswordConfirmation() {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction(
        name: '_SignUpViewModelBase.validatePasswordConfirmation');
    try {
      return super.validatePasswordConfirmation();
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePasswordConfirmationEqualPassword() {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction(
        name: '_SignUpViewModelBase.validatePasswordConfirmationEqualPassword');
    try {
      return super.validatePasswordConfirmationEqualPassword();
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
username: ${username},
password: ${password},
passwordConfirmation: ${passwordConfirmation},
isLoading: ${isLoading}
    ''';
  }
}

mixin _$SignUpError on _SignUpErrorBase, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_SignUpErrorBase.hasErrors'))
          .value;

  final _$usernameAtom = Atom(name: '_SignUpErrorBase.username');

  @override
  String? get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String? value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  final _$passwordAtom = Atom(name: '_SignUpErrorBase.password');

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$passwordConfirmationAtom =
      Atom(name: '_SignUpErrorBase.passwordConfirmation');

  @override
  String? get passwordConfirmation {
    _$passwordConfirmationAtom.reportRead();
    return super.passwordConfirmation;
  }

  @override
  set passwordConfirmation(String? value) {
    _$passwordConfirmationAtom.reportWrite(value, super.passwordConfirmation,
        () {
      super.passwordConfirmation = value;
    });
  }

  final _$passwordConfirmationEqualityAtom =
      Atom(name: '_SignUpErrorBase.passwordConfirmationEquality');

  @override
  String? get passwordConfirmationEquality {
    _$passwordConfirmationEqualityAtom.reportRead();
    return super.passwordConfirmationEquality;
  }

  @override
  set passwordConfirmationEquality(String? value) {
    _$passwordConfirmationEqualityAtom
        .reportWrite(value, super.passwordConfirmationEquality, () {
      super.passwordConfirmationEquality = value;
    });
  }

  final _$signUpAtom = Atom(name: '_SignUpErrorBase.signUp');

  @override
  String? get signUp {
    _$signUpAtom.reportRead();
    return super.signUp;
  }

  @override
  set signUp(String? value) {
    _$signUpAtom.reportWrite(value, super.signUp, () {
      super.signUp = value;
    });
  }

  @override
  String toString() {
    return '''
username: ${username},
password: ${password},
passwordConfirmation: ${passwordConfirmation},
passwordConfirmationEquality: ${passwordConfirmationEquality},
signUp: ${signUp},
hasErrors: ${hasErrors}
    ''';
  }
}
