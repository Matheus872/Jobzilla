import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../theme.dart';
import '../../viewmodel/profile_details_viewmodel.dart';
import 'package:localization/localization.dart';

class ProfileDetailsPage extends StatefulWidget {
  const ProfileDetailsPage({Key? key}) : super(key: key);

  @override
  State<ProfileDetailsPage> createState() => _ProfileDetailsPageState();
}

class _ProfileDetailsPageState
    extends ModularState<ProfileDetailsPage, ProfileDetailsViewModel> {
  late ThemeData _theme;
  bool _isChecked = false;

  Widget get _profileImage => Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'lib/assets/images/profileBanner.jpg',
          ),
          fit: BoxFit.cover,
        )),
      );
  Widget get _backButton => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 40, 0, 150),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
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
                primary: _theme.colorScheme.background,
              ),
            ),
          ],
        ),
      );

  Widget get _bottonSection => Column(
        children: [
          _backButton,
          Container(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                _name,
                _descriptionCard,
                Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 500, 0, 0)),
                //_tabs,
              ],
            ),
          ),
        ],
      );
  Widget get _name => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 5),
        child: Text(
          'Abernathy Reynalds',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            color: _theme.colorScheme.surface,
          ),
        ),
      );

  Widget get _descriptionCard => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(15, 20, 10, 15),
        child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: _theme.colorScheme.tertiary, //Color(0xFFDBE2E7),
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
          'Resume',
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

  Widget get _tabs => Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
        child: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TabBar(
                labelColor: Color(0xFF1D2429),
                unselectedLabelColor: Color(0xFF57636C),
                labelStyle: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF1D2429),
                  fontSize: 18,
                ),
                indicatorColor: Color(0xFF1D2429),
                tabs: [
                  Tab(
                    text: 'Upcoming',
                  ),
                  Tab(
                    text: 'Mentoring',
                  ),
                  Tab(
                    text: 'Portfolio',
                  ),
                ],
              ),
              TabBarView(
                children: [],
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: _theme.colorScheme.background,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            _profileImage,
            SingleChildScrollView(
              child: SafeArea(
                child: GestureDetector(
                  onTap: () => FocusScope.of(context).unfocus(),
                  child: Stack(
                    children: [
                      //_topSection,
                      //_profileImage,
                      //_teste,
                      _bottonSection,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
