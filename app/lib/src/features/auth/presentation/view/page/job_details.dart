import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../theme.dart';
import '../../viewmodel/login_viewmodel.dart';
import 'package:localization/localization.dart';

class JobDetailsPage extends StatefulWidget {
  const JobDetailsPage({Key? key}) : super(key: key);

  @override
  State<JobDetailsPage> createState() => _JobDetailsPageState();
}

class _JobDetailsPageState
    extends ModularState<JobDetailsPage, LoginViewModel> {
  late ThemeData _theme;
  bool _isChecked = false;

  Widget get _topSection => Container(
        width: MediaQuery.of(context).size.width,
        height: 220,
        decoration: BoxDecoration(
          color: _theme.colorScheme.primary,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'lib/assets/images/companyBanner.jpg',
            ).image,
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    _backButton,
                    _pageLabel,
                  ],
                ),
              ),
              _jobTitle,
              _jobSubTitle,
            ],
          ),
        ),
      );
  Widget get _backButton => ElevatedButton(
        onPressed: () {
          Modular.to.navigate('/home');
        },
        child: Icon(
          Icons.arrow_back_ios_rounded,
          color: _theme.colorScheme.primary,
          size: 15,
        ),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(15),
          primary: _theme.colorScheme.secondaryContainer,
        ),
      );
  Widget get _pageLabel => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
        child: Text(
          'job_details_page_label'.i18n(),
          style: TextStyle(
            fontFamily: 'Questrial',
            fontSize: 14,
            color: _theme.colorScheme.surface,
          ),
        ),
      );
  Widget get _jobTitle => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
        child: Text(
          'Senior Designer'.i18n(),
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: _theme.colorScheme.surface,
          ),
        ),
      );
  Widget get _jobSubTitle => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(25, 0, 100, 0),
        child: Text(
          'Melbourne|Fulltime'.i18n(),
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12,
            color: _theme.colorScheme.surface,
          ),
        ),
      );

  Widget get _bottonSection => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 190, 0, 0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: _theme.colorScheme.background,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: _theme.colorScheme.shadow,
                offset: const Offset(0, -2),
              )
            ],
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                _companyTitle,
                _experienceRequirementImage,
                _workJourney,
                _salary,
                _benefits,
                _descriptionCard,
                _detailsCard,
                _localizationCardTitle,
                _localizationCard,
                _contact,
                _sendPitchVideo,
                _applyButton,
              ],
            ),
          ),
        ),
      );
  Widget get _companyTitle => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(25, 12, 0, 5),
        child: Text(
          'IBM enterprise business job',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            color: _theme.colorScheme.surface,
          ),
        ),
      );

  Widget get _experienceRequirementImage => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 45,
              height: 45,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'lib/assets/images/seniorOpportunity.png',
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              child: Text(
                'Senior',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: _theme.colorScheme.surfaceVariant,
                ),
              ),
            ),
          ],
        ),
      );

  Widget get _workJourney => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.work_rounded,
              color: _theme.colorScheme.surface,
              size: 25,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5, 3, 0, 0),
              child: Text(
                'Tempo integral',
                style: TextStyle(
                  fontFamily: 'Questrial',
                  fontSize: 16,
                  color: _theme.colorScheme.surfaceVariant,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
              child: Icon(
                Icons.place,
                color: _theme.colorScheme.surface,
                size: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
              child: Text(
                'Escritório IBM',
                style: TextStyle(
                  fontFamily: 'Questrial',
                  fontSize: 16,
                  color: _theme.colorScheme.surfaceVariant,
                ),
              ),
            ),
          ],
        ),
      );

  Widget get _salary => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(18, 20, 0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.attach_money,
              color: _theme.colorScheme.surface,
              size: 25,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
              child: Text(
                'Faixa salarial: R\$ 2.000,00',
                style: TextStyle(
                  fontFamily: 'Questrial',
                  fontSize: 16,
                  color: _theme.colorScheme.surfaceVariant,
                ),
              ),
            ),
          ],
        ),
      );

  Widget get _benefits => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(18, 20, 0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.card_giftcard_rounded,
              color: _theme.colorScheme.surface,
              size: 25,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
              child: Text(
                'Benefícios: Vale transporte mensal',
                style: TextStyle(
                  fontFamily: 'Questrial',
                  fontSize: 16,
                  color: _theme.colorScheme.surfaceVariant,
                ),
              ),
            ),
          ],
        ),
      );

  Widget get _descriptionCard => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
        child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: _theme.colorScheme.onBackground, //Color(0xFFDBE2E7),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _descriptionCardTitle,
                _descriptionCardText,
              ],
            )),
      );
  Widget get _descriptionCardTitle => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
        child: Text(
          'job_description'.i18n(),
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12,
            color: _theme.colorScheme.surface,
          ),
        ),
      );
  Widget get _descriptionCardText => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
        child: Text(
          'Mussum Ipsum, cacilds vidis litro abertis. In elementis mé pra quem é amistosis quis leo. Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis.',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12,
            color: _theme.colorScheme.surfaceVariant,
          ),
        ),
      );

  Widget get _detailsCard => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
        child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: _theme.colorScheme.onBackground, //Color(0xFFDBE2E7),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _detailsCardTitle,
                _detailsCardText,
              ],
            )),
      );
  Widget get _detailsCardTitle => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
        child: Text(
          'job_details'.i18n(),
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12,
            color: _theme.colorScheme.surface,
          ),
        ),
      );
  Widget get _detailsCardText => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
        child: Text(
          'Mussum Ipsum, cacilds vidis litro abertis. In elementis mé pra quem é amistosis quis leo. Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis.',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12,
            color: _theme.colorScheme.surfaceVariant,
          ),
        ),
      );

  Widget get _localizationCardTitle => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(18, 8, 0, 0),
        child: Text(
          'localization'.i18n(),
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: AppColors.black,
          ),
        ),
      );
  Widget get _localizationCard => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 15, 16, 20),
        child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: _theme.colorScheme.onBackground, //Color(0xFFDBE2E7),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [_localizationCardImage],
            )),
      );
  Widget get _localizationCardImage => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.9,
          child: GestureDetector(
            onTap: () {
              Modular.to.navigate('/localization');
            },
            child: Image.asset(
              'lib/assets/images/mapsPreview.jpg',
            ),
          ),
        ),
      );

  Widget get _contact => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.supervisor_account,
                  color: _theme.colorScheme.surface,
                  size: 30,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                  child: Text(
                    'Contato: ',
                    style: TextStyle(
                      fontFamily: 'Questrial',
                      fontSize: 16,
                      color: _theme.colorScheme.surfaceVariant,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5, 10, 0, 5),
              child: Row(
                children: [
                  Text(
                    'Nome: Thais Cristina',
                    style: TextStyle(
                      fontFamily: 'Questrial',
                      fontSize: 16,
                      color: _theme.colorScheme.surfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 10),
              child: Row(
                children: [
                  Text(
                    'Departamento: RH',
                    style: TextStyle(
                      fontFamily: 'Questrial',
                      fontSize: 16,
                      color: _theme.colorScheme.surfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              child: Text('Começar conversa'),
              onPressed: () {
                Modular.to.navigate('/login');
              },
              style: ElevatedButton.styleFrom(
                textStyle: _theme.textTheme.subtitle2,
                primary: _theme.colorScheme.primary,
                fixedSize: const Size(350, 30),
              ),
            ),
          ],
        ),
      );
  Widget get _sendPitchVideo => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 5, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Checkbox(
              checkColor: Colors.white,
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            Text(
              'Enviar vídeo de apresentação',
              style: TextStyle(
                fontFamily: 'Questrial',
                fontSize: 16,
                color: _theme.colorScheme.surfaceVariant,
              ),
            ),
          ],
        ),
      );
  Widget get _applyButton => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
        child: ElevatedButton(
          child: Text('Aplicar para Vaga'),
          onPressed: () {
            Modular.to.navigate('/login');
          },
          style: ElevatedButton.styleFrom(
            textStyle: _theme.textTheme.subtitle2,
            primary: _theme.colorScheme.primary,
            fixedSize: const Size(350, 50),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: _theme.colorScheme.background,
      body: SingleChildScrollView(
        child: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    _topSection,
                    _bottonSection,
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
