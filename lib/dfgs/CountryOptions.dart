import 'Pivot.dart';

class CountryOptions {
  CountryOptions({
      this.id, 
      this.uuid, 
      this.title, 
      this.flag, 
      this.code, 
      this.shortname, 
      this.status, 
      this.createdAt, 
      this.updatedAt, 
      this.pivot,});

  CountryOptions.fromJson(dynamic json) {
    id = json['id'];
    uuid = json['uuid'];
    title = json['title'];
    flag = json['flag'];
    code = json['code'];
    shortname = json['shortname'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = json['pivot'] != null ? Pivot.fromJson(json['pivot']) : null;
  }
  int id;
  String uuid;
  String title;
  String flag;
  String code;
  String shortname;
  String status;
  String createdAt;
  String updatedAt;
  Pivot pivot;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['uuid'] = uuid;
    map['title'] = title;
    map['flag'] = flag;
    map['code'] = code;
    map['shortname'] = shortname;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (pivot != null) {
      map['pivot'] = pivot.toJson();
    }
    return map;
  }

}