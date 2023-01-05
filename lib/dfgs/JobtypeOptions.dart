import 'Pivot.dart';

class JobtypeOptions {
  JobtypeOptions({
      this.id, 
      this.uuid, 
      this.title, 
      this.status, 
      this.createdAt, 
      this.updatedAt, 
      this.pivot,});

  JobtypeOptions.fromJson(dynamic json) {
    id = json['id'];
    uuid = json['uuid'];
    title = json['title'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = json['pivot'] != null ? Pivot.fromJson(json['pivot']) : null;
  }
  int id;
  String uuid;
  String title;
  String status;
  dynamic createdAt;
  dynamic updatedAt;
  Pivot pivot;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['uuid'] = uuid;
    map['title'] = title;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (pivot != null) {
      map['pivot'] = pivot.toJson();
    }
    return map;
  }

}