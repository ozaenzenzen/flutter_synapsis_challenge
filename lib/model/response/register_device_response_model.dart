class RegisterDeviceResponseModel {
  int? code;
  bool? status;
  String? message;
  RegisterDeviceData? data;

  RegisterDeviceResponseModel({
    this.code,
    this.status,
    this.message,
    this.data,
  });

  factory RegisterDeviceResponseModel.fromJson(Map<String, dynamic> json) => RegisterDeviceResponseModel(
        code: json["code"],
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : RegisterDeviceData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "message": message,
        "data": data?.toJson(),
      };
}

class RegisterDeviceData {
  String? id;
  bool? isActive;
  dynamic activatedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? headUnitSn;
  dynamic equipment;

  RegisterDeviceData({
    this.id,
    this.isActive,
    this.activatedAt,
    this.createdAt,
    this.updatedAt,
    this.headUnitSn,
    this.equipment,
  });

  factory RegisterDeviceData.fromJson(Map<String, dynamic> json) => RegisterDeviceData(
        id: json["id"],
        isActive: json["is_active"],
        activatedAt: json["activated_at"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        headUnitSn: json["head_unit_sn"],
        equipment: json["equipment"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "is_active": isActive,
        "activated_at": activatedAt,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "head_unit_sn": headUnitSn,
        "equipment": equipment,
      };
}
