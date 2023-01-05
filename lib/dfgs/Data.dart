import 'Business.dart';
import 'JobDescription.dart';
import 'JobStatus.dart';
import 'CityOptions.dart';
import 'CountryOptions.dart';
import 'JobtypeOptions.dart';
import 'Salary.dart';

class Data {
  Data({
      this.id, 
      this.uuid, 
      this.title, 
      this.employerBusinessId, 
      this.createdAt, 
      this.updatedAt, 
      this.business, 
      this.jobDescription, 
      this.jobStatus, 
      this.cityOptions, 
      this.countryOptions, 
      this.jobtypeOptions, 
      this.salary,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    uuid = json['uuid'];
    title = json['title'];
    employerBusinessId = json['employer_business_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    business = json['business'] != null ? Business.fromJson(json['business']) : null;
    jobDescription = json['job_description'] != null ? JobDescription.fromJson(json['job_description']) : null;
    if (json['job_status'] != null) {
      jobStatus = [];
      json['job_status'].forEach((v) {
        jobStatus.add(JobStatus.fromJson(v));
      });
    }
    if (json['city_options'] != null) {
      cityOptions = [];
      json['city_options'].forEach((v) {
        cityOptions.add(CityOptions.fromJson(v));
      });
    }
    if (json['country_options'] != null) {
      countryOptions = [];
      json['country_options'].forEach((v) {
        countryOptions.add(CountryOptions.fromJson(v));
      });
    }
    if (json['jobtype_options'] != null) {
      jobtypeOptions = [];
      json['jobtype_options'].forEach((v) {
        jobtypeOptions.add(JobtypeOptions.fromJson(v));
      });
    }
    salary = json['salary'] != null ? Salary.fromJson(json['salary']) : null;
  }
  int id;
  String uuid;
  String title;
  int employerBusinessId;
  String createdAt;
  String updatedAt;
  Business business;
  JobDescription jobDescription;
  List<JobStatus> jobStatus;
  List<CityOptions> cityOptions;
  List<CountryOptions> countryOptions;
  List<JobtypeOptions> jobtypeOptions;
  Salary salary;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['uuid'] = uuid;
    map['title'] = title;
    map['employer_business_id'] = employerBusinessId;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (business != null) {
      map['business'] = business.toJson();
    }
    if (jobDescription != null) {
      map['job_description'] = jobDescription.toJson();
    }
    if (jobStatus != null) {
      map['job_status'] = jobStatus.map((v) => v.toJson()).toList();
    }
    if (cityOptions != null) {
      map['city_options'] = cityOptions.map((v) => v.toJson()).toList();
    }
    if (countryOptions != null) {
      map['country_options'] = countryOptions.map((v) => v.toJson()).toList();
    }
    if (jobtypeOptions != null) {
      map['jobtype_options'] = jobtypeOptions.map((v) => v.toJson()).toList();
    }
    if (salary != null) {
      map['salary'] = salary.toJson();
    }
    return map;
  }

}