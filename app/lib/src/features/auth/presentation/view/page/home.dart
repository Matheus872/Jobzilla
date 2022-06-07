import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../theme.dart';
import '../../viewmodel/login_viewmodel.dart';
import 'package:localization/localization.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends ModularState<homePage, LoginViewModel> {
  late ThemeData _theme = getLightTheme();
  final _pageViewController = PageController(
    initialPage: 0,
    keepPage: true,
    viewportFraction: 1,
  );
  int _selectedIndex = 0;

  Widget get _homePage => ElevatedButton(
        child: Text('login'.i18n()),
        onPressed: () {
          Modular.to.navigate('/');
        },
        style: ElevatedButton.styleFrom(
          textStyle: _theme.textTheme.subtitle2,
          primary: _theme.colorScheme.primary,
          fixedSize: const Size(300, 50),
          shape: const StadiumBorder(),
        ),
      );

  Widget get _userHeader => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
        child: Row(
          children: [
            _userHeaderImage,
            _userHeaderText,
          ],
        ),
      );
  Widget get _userHeaderImage => Align(
        child: Container(
          width: 60,
          height: 60,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            'lib/assets/images/user.png',
          ),
        ),
      );
  Widget get _userHeaderText => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
        child: Column(
          children: [
            Text(
              'Matheus Henrique',
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: AppColors.black,
              ),
            ),
            Text(
              'Matheus@exemplo.com',
              style: const TextStyle(
                fontFamily: 'Questrial',
                fontSize: 12,
                color: AppColors.black,
              ),
            ),
          ],
        ),
      );

  Widget get _homePageBottomSection => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x5B000000),
                offset: Offset(0, -2),
              )
            ],
            borderRadius: BorderRadius.only(
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
                _jobRecomendations,
              ],
            ),
          ),
        ),
      );

  Widget get _jobRecomendations => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_jobRecomendationText, _companyCard],
      );

  Widget get _jobRecomendationText => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
        child: Text(
          'Vagas sugeridas',
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: AppColors.black,
          ),
        ),
      );

  Widget get _jobsPage => Column(
        children: [
          _jobsPageSearchBar,
          _companyCard,
        ],
      );
  Widget get _jobsPageSearchBar => Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 8),
              child: Text(
                'Jobs'.i18n(),
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: AppColors.black,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 10),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'search_bar_hint'.i18n(),
                        hintStyle: const TextStyle(
                          fontFamily: 'Questrial',
                          fontSize: 14,
                          color: AppColors.light_foreground,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFF1F4F8),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFF1F4F8),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Color(0xFF95A1AC),
                        ),
                      ),
                      style: const TextStyle(
                        fontFamily: 'Questrial',
                        fontSize: 14,
                        color: AppColors.light_foreground,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.filter_alt,
                      color: AppColors.light_primaryDark,
                      size: 16,
                    ),
                    style: ElevatedButton.styleFrom(
                      //shape: CircleBorder(),
                      padding: EdgeInsets.all(15),
                      primary: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  Widget get _companyCard => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 15),
        child: GestureDetector(
          onTap: () {
            Modular.to.navigate('/job');
          },
          child: Row(
            children: [
              Container(
                width: 150,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.asset(
                      'lib/assets/images/companyBanner.jpg',
                    ).image,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(0),
                  ),
                ),
              ),
              Container(
                width: 175,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(8),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(8),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 10, 0, 0),
                          child: Text(
                            'Designer',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              color: AppColors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 10, 0, 0),
                          child: Icon(
                            Icons.chevron_right_rounded,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                      child: Text(
                        'Tempo Integral - Senior',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
                      child: Text(
                        'Clique para ver detalhes',
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            fontSize: 12,
                            color: AppColors.dark_textIcons),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget get _explorePage => Column(
        children: [
          _seachBar,
          _opportunities,
          _courses,
          _hackathons,
          _events,
        ],
      );
  Widget get _seachBar => Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 8),
              child: Text(
                'Navegate'.i18n(),
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: AppColors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
              child: TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'search_bar_hint'.i18n(),
                  hintStyle: const TextStyle(
                    fontFamily: 'Questrial',
                    fontSize: 14,
                    color: AppColors.light_foreground,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFF1F4F8),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFF1F4F8),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: Color(0xFF95A1AC),
                  ),
                ),
                style: const TextStyle(
                  fontFamily: 'Questrial',
                  fontSize: 14,
                  color: AppColors.light_foreground,
                ),
              ),
            ),
          ],
        ),
      );
  Widget get _opportunities => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 15),
        child: GestureDetector(
          onTap: () {
            Modular.to.navigate('/job');
          },
          child: Container(
            width: double.infinity,
            height: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: Image.asset(
                  'lib/assets/images/opportunities.jpg',
                ).image,
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  color: Color(0x33000000),
                  offset: Offset(0, 2),
                )
              ],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0x65090F13),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Text(
                              'Oportunidades',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 24,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.chevron_right_rounded,
                            color: Colors.white,
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Text(
                              'Encontre a vaga perfeita',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Color(0xFF39D2C0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  Widget get _courses => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 15),
        child: Container(
          width: double.infinity,
          height: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: Image.asset(
                'lib/assets/images/courses.jpg',
              ).image,
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                color: Color(0x33000000),
                offset: Offset(0, 2),
              )
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0x65090F13),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'Cursos',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 24,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'Aprimore o seu currículo',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Color(0xFF39D2C0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  Widget get _hackathons => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 15),
        child: Container(
          width: double.infinity,
          height: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: Image.asset(
                'lib/assets/images/hackathon.jpg',
              ).image,
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                color: Color(0x33000000),
                offset: Offset(0, 2),
              )
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0x65090F13),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'Hackatons',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 24,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'Forme uma equipe e impressione os recrutadores',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Color(0xFF39D2C0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  Widget get _events => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 15),
        child: Container(
          width: double.infinity,
          height: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: Image.asset(
                'lib/assets/images/events.png',
              ).image,
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                color: Color(0x33000000),
                offset: Offset(0, 2),
              )
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0x65090F13),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'Eventos',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 24,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'Networking e troca de experiências',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Color(0xFF39D2C0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  Widget get _chatPage => Column(
        children: [
          _chatPageAppBar,
        ],
      );
  Widget get _chatPageAppBar => Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        color: AppColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Text(
                'Conversations'.i18n(),
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: AppColors.black,
                ),
              ),
            ),
          ],
        ),
      );

  Widget get _profilePage => Column(
        children: [
          _profilePageTopSection,
          _profilePageSection,
          _profilePageSection,
          _profilePageSection,
          _profilePageOptions
        ],
      );

  Widget get _profilePageTopSection => Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        color: AppColors.light_accent,
        child: Column(
          children: [
            _profileImage,
          ],
        ),
      );

  Widget get _profileImage => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://picsum.photos/seed/339/600',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Matheus Henrique',
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    'Matheus872@example.com',
                    style: const TextStyle(
                      fontFamily: 'Questrial',
                      fontSize: 14,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  Widget get _profilePageOptions => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Modular.to.navigate('/login');
                    },
                    child: Icon(
                      Icons.settings,
                      color: AppColors.light_primaryDark,
                      size: 30,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(15),
                      primary: AppColors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: Text(
                      'Config.'.i18n(),
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(30, 30, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Modular.to.navigate('/login');
                    },
                    child: Icon(
                      Icons.logout,
                      color: AppColors.light_primaryDark,
                      size: 45,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(15),
                      primary: AppColors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: Text(
                      'Sair'.i18n(),
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(30, 15, 0, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Modular.to.navigate('/login');
                    },
                    child: Icon(
                      Icons.support_agent,
                      color: AppColors.light_primaryDark,
                      size: 30,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(15),
                      primary: AppColors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: Text(
                      'Ajuda'.i18n(),
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  Widget get _profilePageSection => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              color: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.white,
                    width: 0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 4, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Edit Profile',
                        style: const TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 16,
                          color: AppColors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Modular.to.navigate('/forgotpswd');
                        },
                        child: Icon(
                          Icons.chevron_right_rounded,
                          color: Color(0xFF95A1AC),
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  void _pageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _navBarIndexChanged(int index) {
    setState(() {
      _selectedIndex = index;
      _pageViewController.animateToPage(index,
          curve: Curves.easeIn, duration: const Duration(milliseconds: 300));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _theme.colorScheme.background,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              PageView(
                controller: _pageViewController,
                children: [
                  SingleChildScrollView(child: _homePage),
                  SingleChildScrollView(child: _jobsPage),
                  SingleChildScrollView(child: _explorePage),
                  SingleChildScrollView(child: _chatPage),
                  SingleChildScrollView(child: _profilePage),
                ],
                onPageChanged: _pageChanged,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_rounded),
            label: 'Vagas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Conversas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: _theme.colorScheme.primary,
        unselectedItemColor: AppColors.light_primaryDark,
        onTap: _navBarIndexChanged,
      ),
    );
  }
}
