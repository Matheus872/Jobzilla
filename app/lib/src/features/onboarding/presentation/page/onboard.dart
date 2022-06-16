import 'package:basearch/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  //Widget get

  @override
  State<Onboarding> createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<Onboarding> {
  //PageController pageViewController;
  late ThemeData _theme;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _pageIndicatorController =
      PageController(initialPage: 0, viewportFraction: 0.8, keepPage: true);

  Widget get _imageOne => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 80),
        child: Image.asset(
          'lib/assets/images/hq.png',
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
      );
  Widget get _titleOne => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
        child: Text(
          'onboard_title_one'.i18n(),
          style: TextStyle(
            fontFamily: 'Poppins',
            color: _theme.colorScheme.surface,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
  Widget get _textOne => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
        child: Text(
          'Mussum Ipsum, cacilds vidis litro abertis.Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis.Mé faiz elementum girarzis, nisi eros vermeio.Si num tem leite então bota uma pinga aí cumpadi!',
          style: TextStyle(
            fontFamily: 'Nunito',
            color: _theme.colorScheme.surfaceVariant,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
      );
  Widget get _onboard1 => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _imageOne,
            _titleOne,
            _textOne,
          ],
        ),
      );

  Widget get _imageTwo => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
        child: Image.asset(
          'lib/assets/images/completeHq.png',
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
      );
  Widget get _titleTwo => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
        child: Text(
          'onboard_title_two'.i18n(),
          style: TextStyle(
            fontFamily: 'Poppins',
            color: _theme.colorScheme.surface,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
  Widget get _textTwo => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
        child: Text(
          'Mussum Ipsum, cacilds vidis litro abertis. In elementis mé pra quem é amistosis quis leo.Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis.',
          style: TextStyle(
            fontFamily: 'Nunito',
            color: _theme.colorScheme.surfaceVariant,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
      );
  Widget get _onboard2 => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _imageTwo,
            _titleTwo,
            _textTwo,
          ],
        ),
      );

  Widget get _imageTree => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
        child: Container(
          child: Image.asset(
            'lib/assets/images/cuteZilla.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
      );
  Widget get _titleTree => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
        child: Text(
          'slogan'.i18n(),
          style: TextStyle(
            fontFamily: 'Poppins',
            color: _theme.colorScheme.surface,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
  Widget get _textTree => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
        child: Text(
          'Mussum Ipsum, cacilds vidis litro abertis. In elementis mé pra quem é amistosis quis leo.Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis.',
          style: TextStyle(
            fontFamily: 'Nunito',
            color: _theme.colorScheme.surfaceVariant,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
      );
  Widget get _onboard3 => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _imageTree,
            _titleTree,
            _textTree,
          ],
        ),
      );

  Widget get _firstImageFour => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
        child: Container(
          child: Image.asset(
            'lib/assets/images/apprentice.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
      );
  Widget get _secondImageFour => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
        child: Container(
          child: Image.asset(
            'lib/assets/images/level.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
      );
  Widget get _firstTextFour => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
        child: Text(
          'Mussum Ipsum, cacilds vidis litro abertis. In elementis mé pra quem é amistosis quis leo.',
          style: TextStyle(
            fontFamily: 'Nunito',
            color: _theme.colorScheme.surfaceVariant,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
      );
  Widget get _secondTextFour => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
        child: Text(
          'Mussum Ipsum, cacilds vidis litro abertis. In elementis mé pra quem é amistosis quis leo.',
          style: TextStyle(
            fontFamily: 'Nunito',
            color: _theme.colorScheme.surfaceVariant,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
      );
  Widget get _onboard4 => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _firstTextFour,
            _firstImageFour,
            _secondTextFour,
            _secondImageFour,
          ],
        ),
      );

  Widget get _titleFive => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
        child: Center(
          child: Text(
            'JobZilla',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: _theme.colorScheme.surface,
              fontSize: 36,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      );
  Widget get _imageFive => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 12, 12),
        child: Container(
          child: Image.asset(
            'lib/assets/images/godzilla.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
      );
  Widget get _textFive => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 42, 12, 50),
        child: Text(
          'slogan'.i18n(),
          style: TextStyle(
            fontFamily: 'Poppins',
            color: _theme.colorScheme.surface,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
  Widget get _buttonFive => ElevatedButton(
        child: Text('onboard_button'.i18n()),
        onPressed: () {
          Modular.to.navigate("/login");
        },
        style: ElevatedButton.styleFrom(
          textStyle: _theme.textTheme.subtitle2,
          primary: _theme.colorScheme.primary,
          fixedSize: const Size(300, 50),
          shape: const StadiumBorder(),
        ),
      );
  Widget get _onboard5 => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _titleFive,
            _imageFive,
            _textFive,
            _buttonFive,
          ],
        ),
      );

  Widget get _pageIndicator => Align(
        alignment: AlignmentDirectional(0, 1),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
          child: SmoothPageIndicator(
            controller: _pageIndicatorController,
            count: 5,
            axisDirection: Axis.horizontal,
            onDotClicked: (i) {
              _pageIndicatorController.animateToPage(
                i,
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            },
            effect: ExpandingDotsEffect(
              expansionFactor: 2,
              spacing: 8,
              radius: 16,
              dotWidth: 16,
              dotHeight: 4,
              dotColor: Color(0xFF22282F),
              activeDotColor: _theme.colorScheme.primary,
              paintStyle: PaintingStyle.fill,
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: _theme.colorScheme.background,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              PageView(
                controller: _pageIndicatorController,
                children: [
                  _onboard1,
                  _onboard2,
                  _onboard3,
                  _onboard4,
                  _onboard5,
                ],
              ),
              _pageIndicator
            ],
          ),
        ),
      ),
    );
  }
}
