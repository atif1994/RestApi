class SalaryType {
  SalaryType({
      this.id, 
      this.uuid, 
      this.title, 
      this.status, 
      this.createdAt, 
      this.updatedAt,});

  SalaryType.fromJson(dynamic json) {
    id = json['id'];
    uuid = json['uuid'];
    title = json['title'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int id;
  String uuid;
  String title;
  String status;
  dynamic createdAt;
  dynamic updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['uuid'] = uuid;
    map['title'] = title;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}