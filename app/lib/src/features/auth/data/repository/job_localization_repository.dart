import 'package:basearch/src/features/auth/domain/model/localization.dart';
import 'package:basearch/src/features/auth/domain/repository/job_localization_interface.dart';
import 'package:dio/dio.dart';
import '../dto/request/job_dto.dart';
import '../dto/request/localization_dto.dart';

class JobLocalizationRepository implements IJobLocalization {
  @override
  Future<Localization> getLocalization(int id) async {
    //final dto = JobDto.fromDomain(id);
    final response = await Dio().post(
      'https://ol0ll.mocklab.io/login',
      //data: dto.toJson(),
    );
    if (response.statusCode == 200) {
      final id = response.headers.value('id');
      final position = response.headers.value('position');
      final title = response.headers.value('title');
      final snippet = response.headers.value('snippet');

      final localizationdto = LocalizationDto(id, position, title, snippet);
      final domain = localizationdto.toDomain();
      return Future.value(domain);
    } else {
      throw Exception("Local inválido!");
    }
  }
}
