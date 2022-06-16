import 'package:basearch/src/features/auth/domain/model/job.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../../theme.dart';
import '../../viewmodel/company_home_viewmodel.dart';
import 'package:localization/localization.dart';

class CompanyHomePage extends StatefulWidget {
  const CompanyHomePage({Key? key}) : super(key: key);

  @override
  State<CompanyHomePage> createState() => _CompanyHomePageState();
}

class _CompanyHomePageState
    extends ModularState<CompanyHomePage, CompanyHomeViewModel> {
  late ThemeData _theme;
  late bool darkModeOn;
  final _pageViewController = PageController(
    initialPage: 0,
    keepPage: true,
    viewportFraction: 1,
  );
  int _selectedIndex = 0;
  final _viewModel = Modular.get<CompanyHomeViewModel>();

  Widget get _company_homePage => Column(
        children: [
          _userHeader,
          //_banner,
          _bannerTwo,
          _statistics,
          _registerJob,
        ],
      );

  Widget get _userHeader => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
        child: Row(
          children: [
            _userHeaderImage,
            _userHeaderText,
          ],
        ),
      );
  Widget get _userHeaderImage => GestureDetector(
        onTap: () => Modular.to.navigate('/profile'),
        child: Align(
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
        ),
      );
  Widget get _userHeaderText => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
        child: Column(
          children: [
            Text(
              'Matheus Henrique',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: _theme.colorScheme.surface,
              ),
            ),
            Text(
              'Matheus@exemplo.com',
              style: TextStyle(
                fontFamily: 'Questrial',
                fontSize: 12,
                color: _theme.colorScheme.surface,
              ),
            ),
          ],
        ),
      );

  Widget get _banner => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.9,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: _theme.colorScheme.shadow,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: Image.asset(
                    'lib/assets/images/banner3.png',
                  ).image,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: _theme.colorScheme.shadow,
                    offset: const Offset(0, 3),
                  )
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
            ),
          ),
        ),
      );
  Widget get _bannerTwo => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.9,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: _theme.colorScheme.shadow,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: Image.asset(
                    'lib/assets/images/banner4.png',
                  ).image,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: _theme.colorScheme.shadow,
                    offset: const Offset(0, 3),
                  )
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
            ),
          ),
        ),
      );

  Widget get _registerJob => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 40, 20, 10),
        child: ElevatedButton(
          child: Text('Ofertar nova vaga'),
          onPressed: () {
            Modular.to.navigate('/registerjob');
          },
          style: ElevatedButton.styleFrom(
            textStyle: _theme.textTheme.subtitle2,
            primary: _theme.colorScheme.primary,
            fixedSize: const Size(350, 50),
          ),
        ),
      );

  Widget get _statistics => darkModeOn
      ? Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 10),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.22,
            width: MediaQuery.of(context).size.width * 0.85,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: _theme.colorScheme.shadow,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.asset(
                      'lib/assets/images/charts_dark.png',
                    ).image,
                  ),
                ),
              ),
            ),
          ),
        )
      : Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 10),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.22,
            width: MediaQuery.of(context).size.width * 0.85,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: _theme.colorScheme.shadow,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.asset(
                      'lib/assets/images/charts.png',
                    ).image,
                  ),
                ),
              ),
            ),
          ),
        );

  Widget get _jobRecomendations =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _jobRecomendationText,
        _recomendation,
      ]);

  Widget get _jobRecomendationText => SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(5, 25, 0, 0),
          child: Text(
            'Vagas sugeridas',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              color: _theme.colorScheme.surface,
            ),
          ),
        ),
      );
  Widget get _recomendation => SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.85,
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
                  color: _theme.colorScheme.secondaryContainer,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.asset(
                      'lib/assets/images/companyBanner.jpg',
                    ).image,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: _theme.colorScheme.shadow,
                      offset: const Offset(0, 2),
                    )
                  ],
                  borderRadius: const BorderRadius.only(
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
                  color: _theme.colorScheme.secondaryContainer,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: _theme.colorScheme.shadow,
                      offset: const Offset(0, 2),
                    )
                  ],
                  borderRadius: const BorderRadius.only(
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
                              color: _theme.colorScheme.surface,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 10, 0, 0),
                          child: Icon(
                            Icons.chevron_right_rounded,
                            color: _theme.colorScheme.surface,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12, 10, 0, 0),
                      child: Text(
                        'Tempo Integral - Senior',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: _theme.colorScheme.surface,
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
                            color: _theme.colorScheme.surfaceVariant),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  Widget get _seeAllJobsRecomendations => SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text('see_jobs_recomendations'.i18n(),
                      style: _theme.textTheme.labelMedium)),
            ],
          ),
        ),
      );

// -----------------------------------------------------------------------------
  Widget get _jobsPage => Column(
        children: [
          _jobsPageSearchBar,
          Column(
            children: [
              _companyCard,
              //Wrap(children: getJobs()),
            ],
          ),
        ],
      );
  Widget get _jobsPageSearchBar => Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        decoration: BoxDecoration(
          color: _theme.colorScheme.background,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 8),
              child: Text(
                'my_jobs'.i18n(),
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: _theme.colorScheme.surface,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 10),
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
                            color: _theme.colorScheme.onBackground,
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
                    child: const Icon(
                      Icons.filter_alt,
                      color: AppColors.light_primaryDark,
                      size: 16,
                    ),
                    style: darkModeOn
                        ? ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(15),
                            primary: AppColors.dark_divider,
                          )
                        : ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(15),
                            primary: AppColors.white),
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
                  color: _theme.colorScheme.secondaryContainer,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.asset(
                      'lib/assets/images/companyBanner.jpg',
                    ).image,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: _theme.colorScheme.shadow,
                      offset: const Offset(0, 2),
                    )
                  ],
                  borderRadius: const BorderRadius.only(
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
                  color: _theme.colorScheme.secondaryContainer,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: _theme.colorScheme.shadow,
                      offset: const Offset(0, 2),
                    )
                  ],
                  borderRadius: const BorderRadius.only(
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
                              color: _theme.colorScheme.surface,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 10, 0, 0),
                          child: Icon(
                            Icons.chevron_right_rounded,
                            color: _theme.colorScheme.surface,
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
                          color: _theme.colorScheme.surface,
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

  /* List<Job> getJobs() async {
    List<Job> jobs = [];
    jobs = await _viewModel.getJobs() as List<Job>;
    List<Widget> cards = [];
    for (int i = 0; i < jobs.length; i++) {
      buildJob(jobs.elementAt(i));
    }
    return cards;
  }
*/

  Widget buildJob(Job job) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.85,
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
                color: _theme.colorScheme.secondaryContainer,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: Image.asset(
                    'lib/assets/images/companyBanner.jpg',
                  ).image,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    color: _theme.colorScheme.shadow,
                    offset: const Offset(0, 2),
                  )
                ],
                borderRadius: const BorderRadius.only(
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
                color: _theme.colorScheme.secondaryContainer,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    color: _theme.colorScheme.shadow,
                    offset: const Offset(0, 2),
                  )
                ],
                borderRadius: const BorderRadius.only(
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
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                        child: Text(
                          job.title,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            color: _theme.colorScheme.surface,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                        child: Icon(
                          Icons.chevron_right_rounded,
                          color: _theme.colorScheme.surface,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(12, 10, 0, 0),
                    child: Text(
                      job.subtitle,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: _theme.colorScheme.surface,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
                    child: Text(
                      'Clique para ver detalhes',
                      style: TextStyle(
                          fontFamily: 'Questrial',
                          fontSize: 12,
                          color: _theme.colorScheme.surfaceVariant),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

// -----------------------------------------------------------------------------
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
        decoration: BoxDecoration(
          color: _theme.colorScheme.background,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 8),
              child: Text(
                'Navegate'.i18n(),
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: _theme.colorScheme.surface,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 10),
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
                            color: _theme.colorScheme.onBackground,
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
                    child: const Icon(
                      Icons.filter_alt,
                      color: AppColors.light_primaryDark,
                      size: 16,
                    ),
                    style: darkModeOn
                        ? ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(15),
                            primary: AppColors.dark_divider,
                          )
                        : ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(15),
                            primary: AppColors.white),
                  ),
                ),
              ],
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
// -----------------------------------------------------------------------------
  Widget get _chatPage => Column(
        children: [
          _chatPageAppBar,
        ],
      );
  Widget get _chatPageAppBar => Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        color: _theme.colorScheme.background,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Text(
                'Conversations'.i18n(),
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: _theme.colorScheme.surface,
                ),
              ),
            ),
          ],
        ),
      );
// -----------------------------------------------------------------------------
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
        color: _theme.colorScheme.primary,
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
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      color: _theme.colorScheme.outline,
                    ),
                  ),
                  Text(
                    'Matheus872@example.com',
                    style: TextStyle(
                      fontFamily: 'Questrial',
                      fontSize: 14,
                      color: _theme.colorScheme.outline,
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
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: _theme.colorScheme.onSurface,
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
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: _theme.colorScheme.onSurface,
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
                    child: const Icon(
                      Icons.support_agent,
                      color: AppColors.light_primaryDark,
                      size: 30,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(15),
                      primary: AppColors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: Text(
                      'Ajuda'.i18n(),
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: _theme.colorScheme.onSurface,
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
    _theme = Theme.of(context);
    darkModeOn = _theme.brightness == Brightness.dark;
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
                  SingleChildScrollView(child: _company_homePage),
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
        unselectedItemColor: _theme.colorScheme.primaryContainer,
        onTap: _navBarIndexChanged,
      ),
    );
  }
}
