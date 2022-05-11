import '../../../domain/model/job.dart';

class JobDto {
  const JobDto(this.id);

  final int id;

  factory JobDto.fromDomain(int id) {
    return JobDto(
      id,
    );
  }

  factory JobDto.fromJson(Map<String, dynamic> json) => JobDto(json['id']);

  Map<String, dynamic> toJson() => {'id': id};
}
