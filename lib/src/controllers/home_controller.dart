import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxDouble _rColor = 0.0.obs;
  final RxDouble _gColor = 0.0.obs;
  final RxDouble _bColor = 0.0.obs;
  final RxString _rString = ''.obs;
  final RxString _rgbColor = ''.obs;
  RxBool _buttonChange = true.obs;

  //GET

  double get rColor => _rColor.value;
  double get gColor => _gColor.value;
  double get bColor => _bColor.value;
  String get colorValue => rgbToHex();
  bool get buttonChange => _buttonChange.value;
  String get colorText => isHexOrRGB();
  String get hexAndRgbValue => colorsValue();
  String get rgbText => rgbToText();

  //SET

  set rColor(value) => _rColor.value = value;
  set gColor(value) => _gColor.value = value;
  set bColor(value) => _bColor.value = value;
  set rgbColor(value) => _rgbColor.value = value;
  set rString(value) => _rString.value = value;
  set buttonChange(value) => _buttonChange = value;

  void changeRSlider(double r) {
    _rColor.value = r;
  }

  void changeGSlider(double g) {
    _gColor.value = g;
  }

  void changeBSlider(double b) {
    _bColor.value = b;
  }

  String rgbToHex() {
    String hex = _rColor.value.toInt().toRadixString(16) +
        _gColor.value.toInt().toRadixString(16) +
        _bColor.value.toInt().toRadixString(16);

    return hex;
    //Conversão do valor rgb para Hex
  }

  String rgbToText() {
    String rgbtext = '${_rColor.value.toInt().toString()},'
        '${_gColor.value.toInt().toString()},'
        '${_bColor.value.toInt().toString()}';

    return rgbtext;
    //Conversão do valor RGB para String
  }

  void boolchange() {
    _buttonChange.value = !_buttonChange.value;
    //Mudança do botão to RGB ou To Hex
  }

  String isHexOrRGB() {
    if (_buttonChange.value == true) {
      return 'HEX: #';
    } else {
      return 'RGB: ';
    }
    //Mudança de HEX para RGB de acordo com o estado do botão
  }

  String colorsValue() {
    if (_buttonChange.value == true) {
      return colorValue;
    } else {
      return rgbText;
    }
  }
}
