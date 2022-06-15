import 'package:basearch/src/features/auth/domain/repository/register_job_interface.dart';
import '../../domain/model/job.dart';
import 'package:dio/dio.dart';

import '../dto/request/job_dto.dart';

class RegisterJobRepository implements IRegisterJob {
  @override
  Future<int?> registerJob(Job job) async {
    final dto = JobDto.fromDomain(job);
    print(dto.toJson());
    final response = await Dio().post(
      'http://10.0.0.102:8080/api/v1/job/create',
      data: dto.toJson(),
    );
    print(response);
    if (response.statusCode == 200) {
      return Future.value(response.statusCode);
    } else {
      throw Exception("Erro ao cadastrar vaga");
    }
  }
}
