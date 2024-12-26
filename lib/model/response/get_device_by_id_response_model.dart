class GetDeviceByIdResponseModel {
  int? code;
  bool? status;
  String? message;
  GetDeviceByIdData? data;

  GetDeviceByIdResponseModel({
    this.code,
    this.status,
    this.message,
    this.data,
  });

  factory GetDeviceByIdResponseModel.fromJson(Map<String, dynamic> json) => GetDeviceByIdResponseModel(
        code: json["code"],
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : GetDeviceByIdData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "message": message,
        "data": data?.toJson(),
      };
}

class GetDeviceByIdData {
  String? id;
  bool? isActive;
  DateTime? activatedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? headUnitSn;
  Equipment? equipment;

  GetDeviceByIdData({
    this.id,
    this.isActive,
    this.activatedAt,
    this.createdAt,
    this.updatedAt,
    this.headUnitSn,
    this.equipment,
  });

  factory GetDeviceByIdData.fromJson(Map<String, dynamic> json) => GetDeviceByIdData(
        id: json["id"],
        isActive: json["is_active"],
        activatedAt: json["activated_at"] == null ? null : DateTime.parse(json["activated_at"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        headUnitSn: json["head_unit_sn"],
        equipment: json["equipment"] == null ? null : Equipment.fromJson(json["equipment"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "is_active": isActive,
        "activated_at": activatedAt?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "head_unit_sn": headUnitSn,
        "equipment": equipment?.toJson(),
      };
}

class Equipment {
  String? id;
  Site? site;
  Model? model;
  String? nearonSn;
  String? headUnitSn;
  String? deviceId;
  String? serialNumber;
  String? code;
  int? hm;
  int? km;
  String? engineNo;
  String? engineModel;
  DateTime? purchasedDate;
  String? purchasedStatus;
  String? conditionStatus;
  String? outlineColor;
  bool? isActive;
  DateTime? createdAt;
  DateTime? updatedAt;
  Telemetry? telemetry;
  SiteFactorMaterial? siteFactorMaterial;
  InstalledModification? installedModification;
  dynamic siteFactorMaterials;

  Equipment({
    this.id,
    this.site,
    this.model,
    this.nearonSn,
    this.headUnitSn,
    this.deviceId,
    this.serialNumber,
    this.code,
    this.hm,
    this.km,
    this.engineNo,
    this.engineModel,
    this.purchasedDate,
    this.purchasedStatus,
    this.conditionStatus,
    this.outlineColor,
    this.isActive,
    this.createdAt,
    this.updatedAt,
    this.telemetry,
    this.siteFactorMaterial,
    this.installedModification,
    this.siteFactorMaterials,
  });

  factory Equipment.fromJson(Map<String, dynamic> json) => Equipment(
        id: json["id"],
        site: json["site"] == null ? null : Site.fromJson(json["site"]),
        model: json["model"] == null ? null : Model.fromJson(json["model"]),
        nearonSn: json["nearon_sn"],
        headUnitSn: json["head_unit_sn"],
        deviceId: json["device_id"],
        serialNumber: json["serial_number"],
        code: json["code"],
        hm: json["hm"],
        km: json["km"],
        engineNo: json["engine_no"],
        engineModel: json["engine_model"],
        purchasedDate: json["purchased_date"] == null ? null : DateTime.parse(json["purchased_date"]),
        purchasedStatus: json["purchased_status"],
        conditionStatus: json["condition_status"],
        outlineColor: json["outline_color"],
        isActive: json["is_active"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        telemetry: json["telemetry"] == null ? null : Telemetry.fromJson(json["telemetry"]),
        siteFactorMaterial: json["site_factor_material"] == null ? null : SiteFactorMaterial.fromJson(json["site_factor_material"]),
        installedModification: json["installed_modification"] == null ? null : InstalledModification.fromJson(json["installed_modification"]),
        siteFactorMaterials: json["site_factor_materials"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "site": site?.toJson(),
        "model": model?.toJson(),
        "nearon_sn": nearonSn,
        "head_unit_sn": headUnitSn,
        "device_id": deviceId,
        "serial_number": serialNumber,
        "code": code,
        "hm": hm,
        "km": km,
        "engine_no": engineNo,
        "engine_model": engineModel,
        "purchased_date": purchasedDate?.toIso8601String(),
        "purchased_status": purchasedStatus,
        "condition_status": conditionStatus,
        "outline_color": outlineColor,
        "is_active": isActive,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "telemetry": telemetry?.toJson(),
        "site_factor_material": siteFactorMaterial?.toJson(),
        "installed_modification": installedModification?.toJson(),
        "site_factor_materials": siteFactorMaterials,
      };
}

class InstalledModification {
  String? id;
  String? modification;
  String? description;

  InstalledModification({
    this.id,
    this.modification,
    this.description,
  });

  factory InstalledModification.fromJson(Map<String, dynamic> json) => InstalledModification(
        id: json["id"],
        modification: json["modification"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "modification": modification,
        "description": description,
      };
}

class Model {
  String? id;
  String? no;
  String? name;
  int? capacity;
  dynamic radiusMeters;
  bool? isTyre;
  String? tyreClass;
  bool? isActive;
  Class? modelClass;
  Class? measurement;
  Manufacture? manufacture;
  EquipmentCategory? equipmentCategory;
  DateTime? createdAt;
  DateTime? updatedAt;

  Model({
    this.id,
    this.no,
    this.name,
    this.capacity,
    this.radiusMeters,
    this.isTyre,
    this.tyreClass,
    this.isActive,
    this.modelClass,
    this.measurement,
    this.manufacture,
    this.equipmentCategory,
    this.createdAt,
    this.updatedAt,
  });

  factory Model.fromJson(Map<String, dynamic> json) => Model(
        id: json["id"],
        no: json["no"],
        name: json["name"],
        capacity: json["capacity"],
        radiusMeters: json["radius_meters"],
        isTyre: json["is_tyre"],
        tyreClass: json["tyre_class"],
        isActive: json["is_active"],
        modelClass: json["class"] == null ? null : Class.fromJson(json["class"]),
        measurement: json["measurement"] == null ? null : Class.fromJson(json["measurement"]),
        manufacture: json["manufacture"] == null ? null : Manufacture.fromJson(json["manufacture"]),
        equipmentCategory: json["equipment_category"] == null ? null : EquipmentCategory.fromJson(json["equipment_category"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "no": no,
        "name": name,
        "capacity": capacity,
        "radius_meters": radiusMeters,
        "is_tyre": isTyre,
        "tyre_class": tyreClass,
        "is_active": isActive,
        "class": modelClass?.toJson(),
        "measurement": measurement?.toJson(),
        "manufacture": manufacture?.toJson(),
        "equipment_category": equipmentCategory?.toJson(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class EquipmentCategory {
  String? id;
  String? name;
  bool? isActive;
  bool? isDefault;
  DateTime? createdAt;
  DateTime? updatedAt;
  EquipmentType? equipmentType;

  EquipmentCategory({
    this.id,
    this.name,
    this.isActive,
    this.isDefault,
    this.createdAt,
    this.updatedAt,
    this.equipmentType,
  });

  factory EquipmentCategory.fromJson(Map<String, dynamic> json) => EquipmentCategory(
        id: json["id"],
        name: json["name"],
        isActive: json["is_active"],
        isDefault: json["is_default"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        equipmentType: json["equipment_type"] == null ? null : EquipmentType.fromJson(json["equipment_type"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "is_active": isActive,
        "is_default": isDefault,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "equipment_type": equipmentType?.toJson(),
      };
}

class EquipmentType {
  String? id;
  String? name;
  String? code;
  String? iconUrl;
  bool? isActive;
  bool? isDefault;
  dynamic modifications;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? appBackgroundUrl;
  String? appLabel;

  EquipmentType({
    this.id,
    this.name,
    this.code,
    this.iconUrl,
    this.isActive,
    this.isDefault,
    this.modifications,
    this.createdAt,
    this.updatedAt,
    this.appBackgroundUrl,
    this.appLabel,
  });

  factory EquipmentType.fromJson(Map<String, dynamic> json) => EquipmentType(
        id: json["id"],
        name: json["name"],
        code: json["code"],
        iconUrl: json["icon_url"],
        isActive: json["is_active"],
        isDefault: json["is_default"],
        modifications: json["modifications"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        appBackgroundUrl: json["app_background_url"],
        appLabel: json["app_label"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "code": code,
        "icon_url": iconUrl,
        "is_active": isActive,
        "is_default": isDefault,
        "modifications": modifications,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "app_background_url": appBackgroundUrl,
        "app_label": appLabel,
      };
}

class Manufacture {
  String? id;
  String? code;
  String? name;
  bool? isActive;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? modelCount;
  String? type;
  String? system;

  Manufacture({
    this.id,
    this.code,
    this.name,
    this.isActive,
    this.createdAt,
    this.updatedAt,
    this.modelCount,
    this.type,
    this.system,
  });

  factory Manufacture.fromJson(Map<String, dynamic> json) => Manufacture(
        id: json["id"],
        code: json["code"],
        name: json["name"],
        isActive: json["is_active"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        modelCount: json["model_count"],
        type: json["type"],
        system: json["system"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "name": name,
        "is_active": isActive,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "model_count": modelCount,
        "type": type,
        "system": system,
      };
}

class Class {
  String? id;
  String? name;

  Class({
    this.id,
    this.name,
  });

  factory Class.fromJson(Map<String, dynamic> json) => Class(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Site {
  String? id;
  String? geoJsonUrl;
  String? site;
  String? name;
  String? clientName;
  String? address;
  String? latitude;
  String? longitude;
  bool? isActive;
  bool? isDefault;
  DateTime? createdAt;
  DateTime? updatedAt;
  Geojson? geojson;

  Site({
    this.id,
    this.geoJsonUrl,
    this.site,
    this.name,
    this.clientName,
    this.address,
    this.latitude,
    this.longitude,
    this.isActive,
    this.isDefault,
    this.createdAt,
    this.updatedAt,
    this.geojson,
  });

  factory Site.fromJson(Map<String, dynamic> json) => Site(
        id: json["id"],
        geoJsonUrl: json["geo_json_url"],
        site: json["site"],
        name: json["name"],
        clientName: json["client_name"],
        address: json["address"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        isActive: json["is_active"],
        isDefault: json["is_default"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        geojson: json["geojson"] == null ? null : Geojson.fromJson(json["geojson"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "geo_json_url": geoJsonUrl,
        "site": site,
        "name": name,
        "client_name": clientName,
        "address": address,
        "latitude": latitude,
        "longitude": longitude,
        "is_active": isActive,
        "is_default": isDefault,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "geojson": geojson?.toJson(),
      };
}

class Geojson {
  String? fileName;
  dynamic coordinates;

  Geojson({
    this.fileName,
    this.coordinates,
  });

  factory Geojson.fromJson(Map<String, dynamic> json) => Geojson(
        fileName: json["file_name"],
        coordinates: json["coordinates"],
      );

  Map<String, dynamic> toJson() => {
        "file_name": fileName,
        "coordinates": coordinates,
      };
}

class SiteFactorMaterial {
  int? factorMaterial;
  String? materialId;
  String? materialName;
  String? measurementId;
  String? measurementName;

  SiteFactorMaterial({
    this.factorMaterial,
    this.materialId,
    this.materialName,
    this.measurementId,
    this.measurementName,
  });

  factory SiteFactorMaterial.fromJson(Map<String, dynamic> json) => SiteFactorMaterial(
        factorMaterial: json["factor_material"],
        materialId: json["material_id"],
        materialName: json["material_name"],
        measurementId: json["measurement_id"],
        measurementName: json["measurement_name"],
      );

  Map<String, dynamic> toJson() => {
        "factor_material": factorMaterial,
        "material_id": materialId,
        "material_name": materialName,
        "measurement_id": measurementId,
        "measurement_name": measurementName,
      };
}

class Telemetry {
  dynamic totalDistanceTravelled;

  Telemetry({
    this.totalDistanceTravelled,
  });

  factory Telemetry.fromJson(Map<String, dynamic> json) => Telemetry(
        totalDistanceTravelled: json["total_distance_travelled"],
      );

  Map<String, dynamic> toJson() => {
        "total_distance_travelled": totalDistanceTravelled,
      };
}
