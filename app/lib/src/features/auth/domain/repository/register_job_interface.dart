import '../model/job.dart';

abstract class IRegisterJob {
  Future<int?> registerJob(Job job);
}
