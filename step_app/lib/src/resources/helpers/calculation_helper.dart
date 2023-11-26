import 'dart:math';

class CalculationHelper {
  static String calculateDistanceFromRssi(int rssi) {
    if (rssi == 0) {
      return (-1.0).toString();
    }
    double ratio = rssi * 1.0 / -59;
    if (ratio < 1.0) {
      return pow(ratio, 10).toStringAsFixed(2);
    } else {
      double distance = (0.89976) * pow(ratio, 7.7095) + 0.111;
      return distance.toStringAsFixed(2);
    }
  }
}
