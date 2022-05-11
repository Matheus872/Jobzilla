class Job {
  const Job(this.id);

  final int id;

  factory Job.fromJson(Map<String, dynamic> json) => Job(json['id']);
}
