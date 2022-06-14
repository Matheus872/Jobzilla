import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../theme.dart';
import '../../viewmodel/login_viewmodel.dart';
import 'package:localization/localization.dart';

import '../../viewmodel/register_job_viewmodel.dart';

class RegisterJob extends StatefulWidget {
  const RegisterJob({Key? key}) : super(key: key);

  @override
  State<RegisterJob> createState() => _RegisterJobState();
}

class _RegisterJobState
    extends ModularState<RegisterJob, RegisterJobViewModel> {
  late ThemeData _theme;
  bool darkModeOn = false;
  final _viewModel = Modular.get<RegisterJobViewModel>();
  bool _value = false;
  int val = -1;

  final _emailTextFieldController = TextEditingController();
  final _passwordTextFieldController = TextEditingController();
  bool _passwordVisibility = false;
  bool _passwordConfirmationVisibility = false;

  Widget get _userForm => SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 50, 0, 10),
              child: _titleLabel,
            ),
            _titleTextField,
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 15, 0, 10),
              child: _subtitleLabel,
            ),
            _subtitleTextField,
            Row(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10, 25, 20, 20),
                  child: _experienceLabel,
                ),
                _experienceLvl,
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 15, 0, 10),
              child: _workJourneyLabel,
            ),
            _workJourneyTextField,
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 15, 0, 10),
              child: _placeLabel,
            ),
            _placeTextField,
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 15, 0, 10),
              child: _salaryLabel,
            ),
            _salaryTextField,
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 15, 0, 10),
              child: _benefitsLabel,
            ),
            _benefitsTextField,
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 15, 0, 10),
              child: _descriptionLabel,
            ),
            _descriptionTextField,
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: _createAccountButton,
            ),
          ],
        ),
      );

  Widget get _titleLabel => Text(
        'title_label'.i18n(),
        style: _theme.textTheme.overline,
      );

  Widget get _subtitleLabel => Text(
        'subtitle_label'.i18n(),
        style: _theme.textTheme.overline,
      );

  Widget get _experienceLabel => Text(
        'experience_label'.i18n(),
        style: _theme.textTheme.overline,
      );

  Widget get _workJourneyLabel => Text(
        'work_journey_label'.i18n(),
        style: _theme.textTheme.overline,
      );

  Widget get _placeLabel => Text(
        'place_label'.i18n(),
        style: _theme.textTheme.overline,
      );

  Widget get _salaryLabel => Text(
        'salary_label'.i18n(),
        style: _theme.textTheme.overline,
      );

  Widget get _benefitsLabel => Text(
        'benefits_label'.i18n(),
        style: _theme.textTheme.overline,
      );

  Widget get _descriptionLabel => Text(
        'description_label'.i18n(),
        style: _theme.textTheme.overline,
      );

  String dropdownValue = 'Apprentice';
  Widget get _experienceLvl => DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: TextStyle(color: _theme.colorScheme.primary),
      underline: Container(
        height: 2,
        color: _theme.colorScheme.primary,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Apprentice', 'Treinee', 'Junior', 'Full', 'Senior']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList());

  Widget get _titleTextField => TextFormField(
        obscureText: false,
        style: _theme.textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.name,
        onChanged: (value) => _viewModel.username = value,
        decoration: InputDecoration(
          hintText: 'username_hint'.i18n(),
          hintStyle: _theme.textTheme.bodyText2,
          filled: true,
          fillColor: _theme.colorScheme.onBackground,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: _theme.colorScheme.onBackground,
              width: 20,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: _theme.colorScheme.primaryContainer, width: 20),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );
  Widget get _subtitleTextField => TextFormField(
        obscureText: false,
        style: _theme.textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        //onChanged: (value) => _viewModel.email = value,
        decoration: InputDecoration(
          hintText: 'email_hint'.i18n(),
          hintStyle: _theme.textTheme.bodyText2,
          filled: true,
          fillColor: _theme.colorScheme.onBackground,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: _theme.colorScheme.onBackground,
              width: 20,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: _theme.colorScheme.primaryContainer, width: 20),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );

  Widget get _workJourneyTextField => TextFormField(
        obscureText: false,
        style: _theme.textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        //onChanged: (value) => _viewModel.email = value,
        decoration: InputDecoration(
          hintText: 'email_hint'.i18n(),
          hintStyle: _theme.textTheme.bodyText2,
          filled: true,
          fillColor: _theme.colorScheme.onBackground,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: _theme.colorScheme.onBackground,
              width: 20,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: _theme.colorScheme.primaryContainer, width: 20),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );

  Widget get _placeTextField => TextFormField(
        obscureText: false,
        style: _theme.textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        //onChanged: (value) => _viewModel.email = value,
        decoration: InputDecoration(
          hintText: 'email_hint'.i18n(),
          hintStyle: _theme.textTheme.bodyText2,
          filled: true,
          fillColor: _theme.colorScheme.onBackground,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: _theme.colorScheme.onBackground,
              width: 20,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: _theme.colorScheme.primaryContainer, width: 20),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );

  Widget get _salaryTextField => TextFormField(
        obscureText: false,
        style: _theme.textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        //onChanged: (value) => _viewModel.email = value,
        decoration: InputDecoration(
          hintText: 'email_hint'.i18n(),
          hintStyle: _theme.textTheme.bodyText2,
          filled: true,
          fillColor: _theme.colorScheme.onBackground,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: _theme.colorScheme.onBackground,
              width: 20,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: _theme.colorScheme.primaryContainer, width: 20),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );

  Widget get _benefitsTextField => TextFormField(
        obscureText: false,
        style: _theme.textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        //onChanged: (value) => _viewModel.email = value,
        decoration: InputDecoration(
          hintText: 'email_hint'.i18n(),
          hintStyle: _theme.textTheme.bodyText2,
          filled: true,
          fillColor: _theme.colorScheme.onBackground,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: _theme.colorScheme.onBackground,
              width: 20,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: _theme.colorScheme.primaryContainer, width: 20),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );

  Widget get _descriptionTextField => TextFormField(
        obscureText: false,
        style: _theme.textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        //onChanged: (value) => _viewModel.email = value,
        decoration: InputDecoration(
          hintText: 'email_hint'.i18n(),
          hintStyle: _theme.textTheme.bodyText2,
          filled: true,
          fillColor: _theme.colorScheme.onBackground,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: _theme.colorScheme.onBackground,
              width: 20,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: _theme.colorScheme.primaryContainer, width: 20),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );

  Widget get _radioButtons => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 35,
            child: ListTile(
              title: Text(
                "candidate".i18n(),
                style: _theme.textTheme.overline,
              ),
              leading: Radio(
                value: 1,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value as int;
                    //_viewModel.profileType = val;
                  });
                },
                activeColor: _theme.colorScheme.primary,
              ),
            ),
          ),
          SizedBox(
            height: 35,
            child: ListTile(
              title: Text(
                "recruiter".i18n(),
                style: _theme.textTheme.overline,
              ),
              leading: Radio(
                value: 2,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value as int;
                    //_viewModel.profileType = val;
                  });
                },
                activeColor: _theme.colorScheme.primary,
              ),
            ),
          ),
        ],
      );

  Widget get _createAccountButton => ElevatedButton(
        child: Text('anounce_job'.i18n()),
        onPressed: () {
          FocusScope.of(context).unfocus();
          //_viewModel.signUp();
        },
        style: ElevatedButton.styleFrom(
          textStyle: _theme.textTheme.subtitle2,
          primary: _theme.colorScheme.primary,
          fixedSize: const Size(320, 50),
          shape: const StadiumBorder(),
        ),
      );

  Widget get _baseboardImage => darkModeOn
      ? SizedBox(
          height: MediaQuery.of(context).size.height * 0.27,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'lib/assets/images/launchScreenBottonImage.png',
          ),
        )
      : SizedBox(
          height: MediaQuery.of(context).size.height * 0.27,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'lib/assets/images/launchScreenBottonImage_light.png',
          ),
        );

  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    darkModeOn = _theme.brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: _theme.colorScheme.background,
      appBar: AppBar(
        backgroundColor: _theme.colorScheme.background,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Modular.to.navigate('/companyhome');
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: _theme.colorScheme.primary,
            size: 32,
          ),
        ),
        title: const Text('Ofertar nova vaga'),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        //physics: NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                _userForm,
                _baseboardImage,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
