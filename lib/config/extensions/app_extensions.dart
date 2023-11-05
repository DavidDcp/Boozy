import 'dart:math';

extension AngleConvertions on num {
  double toRad() => this * pi / 180;

  double toDeg() => this * 180 / pi;
}
