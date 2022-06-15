class Job {
  const Job(this.title, this.subtitle, this.experience, this.workJourney,
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

  factory Job.fromJson(Map<String, dynamic> json) => Job(
      json['title'],
      json['subtitle'],
      json['experience'],
      json['workJourney'],
      json['local'],
      json['salary'],
      json['benefits'],
      json['description'],
      json['skills']);
}
