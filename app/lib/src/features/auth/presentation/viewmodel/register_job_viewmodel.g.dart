// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_job_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterJobViewModel on _RegisterJobViewModelBase, Store {
  final _$titleAtom = Atom(name: '_RegisterJobViewModelBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$subtitleAtom = Atom(name: '_RegisterJobViewModelBase.subtitle');

  @override
  String get subtitle {
    _$subtitleAtom.reportRead();
    return super.subtitle;
  }

  @override
  set subtitle(String value) {
    _$subtitleAtom.reportWrite(value, super.subtitle, () {
      super.subtitle = value;
    });
  }

  final _$experienceAtom = Atom(name: '_RegisterJobViewModelBase.experience');

  @override
  String get experience {
    _$experienceAtom.reportRead();
    return super.experience;
  }

  @override
  set experience(String value) {
    _$experienceAtom.reportWrite(value, super.experience, () {
      super.experience = value;
    });
  }

  final _$workJourneyAtom = Atom(name: '_RegisterJobViewModelBase.workJourney');

  @override
  String get workJourney {
    _$workJourneyAtom.reportRead();
    return super.workJourney;
  }

  @override
  set workJourney(String value) {
    _$workJourneyAtom.reportWrite(value, super.workJourney, () {
      super.workJourney = value;
    });
  }

  final _$placeAtom = Atom(name: '_RegisterJobViewModelBase.place');

  @override
  String get place {
    _$placeAtom.reportRead();
    return super.place;
  }

  @override
  set place(String value) {
    _$placeAtom.reportWrite(value, super.place, () {
      super.place = value;
    });
  }

  final _$salaryAtom = Atom(name: '_RegisterJobViewModelBase.salary');

  @override
  String get salary {
    _$salaryAtom.reportRead();
    return super.salary;
  }

  @override
  set salary(String value) {
    _$salaryAtom.reportWrite(value, super.salary, () {
      super.salary = value;
    });
  }

  final _$benefitsAtom = Atom(name: '_RegisterJobViewModelBase.benefits');

  @override
  String get benefits {
    _$benefitsAtom.reportRead();
    return super.benefits;
  }

  @override
  set benefits(String value) {
    _$benefitsAtom.reportWrite(value, super.benefits, () {
      super.benefits = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_RegisterJobViewModelBase.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$skillsAtom = Atom(name: '_RegisterJobViewModelBase.skills');

  @override
  List<int> get skills {
    _$skillsAtom.reportRead();
    return super.skills;
  }

  @override
  set skills(List<int> value) {
    _$skillsAtom.reportWrite(value, super.skills, () {
      super.skills = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_RegisterJobViewModelBase.isLoading');

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

  @override
  String toString() {
    return '''
title: ${title},
subtitle: ${subtitle},
experience: ${experience},
workJourney: ${workJourney},
place: ${place},
salary: ${salary},
benefits: ${benefits},
description: ${description},
skills: ${skills},
isLoading: ${isLoading}
    ''';
  }
}

mixin _$RegisterJobError on _RegisterJobErrorBase, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_RegisterJobErrorBase.hasErrors'))
          .value;

  final _$usernameAtom = Atom(name: '_RegisterJobErrorBase.username');

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

  final _$passwordAtom = Atom(name: '_RegisterJobErrorBase.password');

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

  final _$loginAtom = Atom(name: '_RegisterJobErrorBase.login');

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
