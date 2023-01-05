class Pivot {
  Pivot({
      this.jobId, 
      this.jobtypeId,});

  Pivot.fromJson(dynamic json) {
    jobId = json['job_id'];
    jobtypeId = json['jobtype_id'];
  }
  int jobId;
  int jobtypeId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['job_id'] = jobId;
    map['jobtype_id'] = jobtypeId;
    return map;
  }

}