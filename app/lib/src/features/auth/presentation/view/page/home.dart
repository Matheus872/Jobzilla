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
  late ThemeData _theme = getTheme();
  int _selectedIndex = 0;

  Widget get _appBar => AppBar(
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Navegate'.i18n(),
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            color: AppColors.black,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
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

  Widget get _seachBar => Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x430F1113),
              offset: Offset(0, 5),
            )
          ],
        ),
        child: Padding(
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
      );

  Widget get _explorePage => Column(
        children: [
          _appBar,
          _seachBar,
          _opportunities,
          _courses,
          _hackathons,
          _events,
        ],
      );

  Widget get _profilePage => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x5B000000),
              offset: Offset(0, -2),
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70),
            bottomRight: Radius.circular(70),
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
          ),
        ),
        child: Column(
          children: [
            _profilePageAppBar,
            _profileImage,
            _profilePageOptions,
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            )
          ],
        ),
      );
  Widget get _profilePageAppBar => AppBar(
        backgroundColor: AppColors.white,
        title: const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(130, 0, 0, 0),
          child: Text(
            'Perfil',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: AppColors.black,
            ),
          ),
        ),
      );
  Widget get _profileImage => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 130,
              height: 130,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'lib/assets/images/user.png',
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
              child: Text(
                'Matheus',
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: AppColors.black,
                ),
              ),
            ),
          ],
        ),
      );
  Widget get _profilePageOptions => Row(
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
                    Icons.edit,
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
                    'Editar Perfil'.i18n(),
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
      );

  Widget get _chatPage => Column(
        children: [
          _chatPageAppBar,
        ],
      );

  Widget get _chatPageAppBar => AppBar(
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Conversations'.i18n(),
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            color: AppColors.black,
          ),
        ),
        actions: [],
        centerTitle: false,
      );

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.light_primaryLight,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              PageView(
                children: [
                  SingleChildScrollView(child: _explorePage),
                  SingleChildScrollView(child: _chatPage),
                  SingleChildScrollView(child: _profilePage),
                ],
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
        selectedItemColor: AppColors.light_accent,
        unselectedItemColor: AppColors.light_primary,
        onTap: _onItemTapped,
      ),
    );
  }
}
