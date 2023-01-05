import 'SalaryType.dart';

class Salary {
  Salary({
      this.id, 
      this.uuid, 
      this.countryCurrencyId, 
      this.minimum, 
      this.maximum, 
      this.jobId, 
      this.salarytypeId, 
      this.createdAt, 
      this.updatedAt, 
      this.country, 
      this.salaryType,});

  Salary.fromJson(dynamic json) {
    id = json['id'];
    uuid = json['uuid'];
    countryCurrencyId = json['country_currency_id'];
    minimum = json['minimum'];
    maximum = json['maximum'];
    jobId = json['job_id'];
    salarytypeId = json['salarytype_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    country = json['country'];
    salaryType = json['salary_type'] != null ? SalaryType.fromJson(json['salary_type']) : null;
  }
  int id;
  String uuid;
  int countryCurrencyId;
  String minimum;
  String maximum;
  int jobId;
  int salarytypeId;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic country;
  SalaryType salaryType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['uuid'] = uuid;
    map['country_currency_id'] = countryCurrencyId;
    map['minimum'] = minimum;
    map['maximum'] = maximum;
    map['job_id'] = jobId;
    map['salarytype_id'] = salarytypeId;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['country'] = country;
    if (salaryType != null) {
      map['salary_type'] = salaryType.toJson();
    }
    return map;
  }

}