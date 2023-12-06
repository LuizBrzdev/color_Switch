import 'package:get/get.dart';

class HomeController extends GetxController {
  //Observable Variables
  final RxDouble _rColor = 0.0.obs;
  double get rColor => _rColor.value;
  set rColor(double value) => _rColor.value = value;

  final RxDouble _gColor = 0.0.obs;
  double get gColor => _gColor.value;
  set gColor(double value) => _gColor.value = value;

  final RxDouble _bColor = 0.0.obs;
  double get bColor => _bColor.value;
  set bColor(double value) => _bColor.value = value;

  final RxBool _changeButtonText = true.obs;
  bool get buttonChange => _changeButtonText.value;

  //GET

  String get colorText => verifyIfActualColorIsHexOrRGBToDefineText();
  String get hexAndRgbToString => convertRGBAndHextToString();

  String convertRGBAndHextToString() {
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

  void changeButtonTextToRgbOrHex() {
    _changeButtonText.value = !_changeButtonText.value;
    //Mudança do botão to RGB ou To Hex
  }

  String verifyIfActualColorIsHexOrRGBToDefineText() {
    if (_changeButtonText.value) {
      return 'HEX: #';
    } else {
      return 'RGB: ';
    }
    //Mudança de HEX para RGB de acordo com o estado do botão
  }
}
