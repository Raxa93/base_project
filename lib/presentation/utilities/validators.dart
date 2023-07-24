bool isNull(val) {
  return val == null;
}

bool isNotNullOrEmpty(String? str) {
  return (str != null && str.isNotEmpty);
}

bool isNullOrEmpty(String? str) {
  return (str == null || str.isEmpty);
}

RegExp _alpha = RegExp(r'^[a-zA-Z]+$');
bool isValidAlpha(String? str) {
  if (isNullOrEmpty(str)) return false;
  return _alpha.hasMatch(str!);
}

RegExp _alphanumeric = RegExp(r'^[a-zA-Z0-9]+$');
bool isValidAlphanumeric(String? str) {
  if (isNullOrEmpty(str)) return false;
  return _alphanumeric.hasMatch(str!);
}

RegExp _int = RegExp(r'^(?:-?(?:0|[1-9][0-9]*))$');
bool isInt(String? str) {
  if (isNullOrEmpty(str)) return false;
  return _int.hasMatch(str!);
}

RegExp _float =
    RegExp(r'^(?:-?(?:[0-9]+))?(?:\.[0-9]*)?(?:[eE][\+\-]?(?:[0-9]+))?$');
bool isFloat(String? str) {
  if (isNullOrEmpty(str)) return false;
  return _float.hasMatch(str!);
}

RegExp _phoneNo = RegExp(r'^\+?[0-9]+$');
bool isValidPhoneNumber(String? str) {
  if (isNullOrEmpty(str)) return false;
  if (str!.length < 7) return false;
  return _phoneNo.hasMatch(str);
}

bool isValidLatitude(String? latitude) {
  if (isNullOrEmpty(latitude)) return false;
  var value = double.parse(latitude!);
  if (isNull(value)) return false;

  if (value < -90 && value > 90) {
    return true;
  } else {
    return false;
  }
}

bool isValidLongitude(String? longitude) {
  if (isNullOrEmpty(longitude)) return false;
  var value = double.parse(longitude!);
  if (isNull(value)) return false;

  if (value < -180 && value > 180) {
    return true;
  } else {
    return false;
  }
}
