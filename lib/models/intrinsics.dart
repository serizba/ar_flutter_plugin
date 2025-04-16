// The code in this file is adapted from Oleksandr Leuschenko' ARKit Flutter Plugin (https://github.com/olexale/arkit_flutter_plugin)

import 'package:ar_flutter_plugin_flutterflow/utils/json_converters.dart';


/// A result (type, distance from the camera, world transformation) of an intersection found during a hit-test.
class CameraIntrinsics {
  CameraIntrinsics(
    this.f_x,
    this.f_y,
    this.c_x,
    this.c_y,
    this.w,
    this.h,
  );

  final double f_x;
  final double f_y;
  final double c_x;
  final double c_y;
  final int w;
  final int h;

  factory CameraIntrinsics.fromJson(List<dynamic> json) {
    var paramsDouble = json.cast<double>();
    return CameraIntrinsics(
      paramsDouble[0],
      paramsDouble[1],
      paramsDouble[2],
      paramsDouble[3],
      paramsDouble[4].toInt(),
      paramsDouble[5].toInt(),
    );
  }

  List<dynamic> toJson(CameraIntrinsics intrinsics) {
    return [
      intrinsics.f_x,
      intrinsics.f_y,
      intrinsics.c_x,
      intrinsics.c_y,
      intrinsics.w.toDouble(),
      intrinsics.h.toDouble(),
    ];
  }
}
