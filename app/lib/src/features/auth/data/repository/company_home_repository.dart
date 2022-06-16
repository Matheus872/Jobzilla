import 'package:basearch/src/features/auth/domain/model/job.dart';
import 'package:basearch/src/features/auth/domain/repository/company_home.dart';
import 'package:flutter/cupertino.dart';

import '../../domain/model/user.dart';
import '../../domain/repository/login_interface.dart';
import 'package:dio/dio.dart';

import '../dto/request/user_dto.dart';

class CompanyHomeRepository implements ICompanyHome {
  @override
  Future<List<Job>?> getJobs() async {
    final response = await Dio().get(
      'https://ol0ll.mocklab.io/jobs',
    );
    print(response);
    if (response.statusCode == 200) {
      final List<Job> jobs = response.headers as List<Job>;
      print(jobs);
      return Future.value(jobs);
    } else {
      throw Exception("OMFG");
    }
  }
}
