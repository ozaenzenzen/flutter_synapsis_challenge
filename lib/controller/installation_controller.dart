import 'package:fam_coding_supply/fam_coding_supply.dart';
import 'package:flutter_synapsis_challenge/model/device_info_data_entity.dart';

class InstallationController {
  Future<DeviceInfoData?> getDeviceDataInfo() async {
    DeviceInfoData deviceInfoData = await AppDeviceInfoCS().getDeviceData();
    return deviceInfoData;
  }
}