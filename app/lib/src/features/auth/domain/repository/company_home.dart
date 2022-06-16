import '../model/job.dart';
import '../model/user.dart';

abstract class ICompanyHome {
  Future<List<Job>?> getJobs();
}
