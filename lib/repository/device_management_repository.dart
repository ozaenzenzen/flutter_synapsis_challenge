import 'package:fam_coding_supply/fam_coding_supply.dart';
import 'package:flutter_synapsis_challenge/init_config.dart';
import 'package:flutter_synapsis_challenge/model/response/get_device_by_id_response_model.dart';
import 'package:flutter_synapsis_challenge/model/response/register_device_response_model.dart';
import 'package:flutter_synapsis_challenge/support/app_api_path.dart';

class DeviceManagementRepository {
  Future<RegisterDeviceResponseModel?> registerDevice(
    String deviceId,
    String randomDeviceId,
  ) async {
    try {
      final response = await InitConfig.appApiService.call(
        AppApiPath.registerDevice,
        method: MethodRequestCS.post,
        request: {
          'id': deviceId,
          'head_unit_sn': deviceId,
        },
      );
      if (response.data != null) {
        return RegisterDeviceResponseModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (errorMessage) {
      AppLoggerCS.debugLog("[DeviceManagement][registerDevice] errorMessage $errorMessage");
      return null;
    }
  }

  Future<GetDeviceByIdResponseModel?> getDeviceById(
    String deviceId,
  ) async {
    try {
      final response = await InitConfig.appApiService.call(
        AppApiPath.getDeviceById + deviceId,
        method: MethodRequestCS.get,
      );
      if (response.data != null) {
        return GetDeviceByIdResponseModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (errorMessage) {
      AppLoggerCS.debugLog("[DeviceManagement][getDeviceById] errorMessage $errorMessage");
      return null;
    }
  }
}
