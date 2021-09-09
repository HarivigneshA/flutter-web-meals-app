class DeviceDetailsModel {
  double height;
  double width;

  DeviceDetailsModel({
    required this.height,
    required this.width,
  });
}

class MyDevice {
  DeviceDetailsModel _mydevice = DeviceDetailsModel(height: 0, width: 0);

  void setDeviceDetails(double h, double w) {
    _mydevice.height = h;
    _mydevice.width = w;
  }

  double getHeight(){
    return _mydevice.height;
  }

  double getWidth(){
    return _mydevice.width;
  }
}
