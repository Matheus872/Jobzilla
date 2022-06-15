import '../../../domain/model/job.dart';

class JobDto {
  const JobDto(this.title, this.subtitle, this.experience, this.workJourney,
      this.local, this.salary, this.benefits, this.description, this.skills);

  final String title;
  final String subtitle;
  final String experience;
  final String workJourney;
  final String local;
  final String salary;
  final String benefits;
  final String description;
  final List<int> skills;

  factory JobDto.fromDomain(Job job) {
    return JobDto(
      job.title,
      job.subtitle,
      job.experience,
      job.workJourney,
      job.local,
      job.salary,
      job.benefits,
      job.description,
      job.skills,
    );
  }

  factory JobDto.fromJson(Map<String, dynamic> json) => JobDto(
      json['title'],
      json['subtitle'],
      json['experience'],
      json['workJourney'],
      json['local'],
      json['salary'],
      json['benefits'],
      json['description'],
      json['skills']);

  Map<String, dynamic> toJson() => {
        "title": title,
        "subtitle": subtitle,
        "experience": experience,
        "workJourney": workJourney,
        "local": local,
        "salary": salary,
        "benefits": benefits,
        "description": description,
        "skills": skills
      };
}
