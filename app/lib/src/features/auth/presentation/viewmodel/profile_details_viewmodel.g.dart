// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_details_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfileDetailsViewModel on _ProfileDetailsViewModelBase, Store {
  final _$usernameAtom = Atom(name: '_ProfileDetailsViewModelBase.username');

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

  final _$passwordAtom = Atom(name: '_ProfileDetailsViewModelBase.password');

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

  final _$isLoadingAtom = Atom(name: '_ProfileDetailsViewModelBase.isLoading');

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

  final _$_ProfileDetailsViewModelBaseActionController =
      ActionController(name: '_ProfileDetailsViewModelBase');

  @override
  void validateUsername() {
    final _$actionInfo = _$_ProfileDetailsViewModelBaseActionController
        .startAction(name: '_ProfileDetailsViewModelBase.validateUsername');
    try {
      return super.validateUsername();
    } finally {
      _$_ProfileDetailsViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword() {
    final _$actionInfo = _$_ProfileDetailsViewModelBaseActionController
        .startAction(name: '_ProfileDetailsViewModelBase.validatePassword');
    try {
      return super.validatePassword();
    } finally {
      _$_ProfileDetailsViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
username: ${username},
password: ${password},
isLoading: ${isLoading}
    ''';
  }
}

mixin _$ProfileDetailsError on _ProfileDetailsErrorBase, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_ProfileDetailsErrorBase.hasErrors'))
          .value;

  final _$usernameAtom = Atom(name: '_ProfileDetailsErrorBase.username');

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

  final _$passwordAtom = Atom(name: '_ProfileDetailsErrorBase.password');

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

  final _$loginAtom = Atom(name: '_ProfileDetailsErrorBase.login');

  @override
  String? get login {
    _$loginAtom.reportRead();
    return super.login;
  }

  @override
  set login(String? value) {
    _$loginAtom.reportWrite(value, super.login, () {
      super.login = value;
    });
  }

  @override
  String toString() {
    return '''
username: ${username},
password: ${password},
login: ${login},
hasErrors: ${hasErrors}
    ''';
  }
}
