import 'measurement_system.dart';

class Triangle {
  double _width;
  double _height;

  Triangle._internal(this._width, this._height);

  Triangle(double width, double height, MeasurementSystem system)
    : this._internal(_convertToMm(width, system), _convertToMm(height, system));

  Triangle.mm(double width, double height) : this._internal(width, height);

  Triangle.cm(double width, double height)
    : this._internal(
        _convertToMm(width, MeasurementSystem.cm),
        _convertToMm(height, MeasurementSystem.cm),
      );

  Triangle.dm(double width, double height)
    : this._internal(
        _convertToMm(width, MeasurementSystem.dm),
        _convertToMm(height, MeasurementSystem.dm),
      );

  Triangle.m(double width, double height)
    : this._internal(
        _convertToMm(width, MeasurementSystem.m),
        _convertToMm(height, MeasurementSystem.m),
      );

  Triangle.inch(double width, double height)
    : this._internal(
        _convertToMm(width, MeasurementSystem.inch),
        _convertToMm(height, MeasurementSystem.inch),
      );

  Triangle.feet(double width, double height)
    : this._internal(
        _convertToMm(width, MeasurementSystem.feet),
        _convertToMm(height, MeasurementSystem.feet),
      );

  double get widthInMillimeters {
    return _convertFromMm(_width, MeasurementSystem.mm);
  }

  set widthInMillimeters(double value) {
    _width = _convertToMm(value, MeasurementSystem.mm);
  }

  double get widthInCentimeters {
    return _convertFromMm(_width, MeasurementSystem.cm);
  }

  set widthInCentimeters(double value) {
    _width = _convertToMm(value, MeasurementSystem.cm);
  }

  double get widthInDecimeters {
    return _convertFromMm(_width, MeasurementSystem.dm);
  }

  set widthInDecimeters(double value) {
    _width = _convertToMm(value, MeasurementSystem.dm);
  }

  double get widthInMeters {
    return _convertFromMm(_width, MeasurementSystem.m);
  }

  set widthInMeters(double value) {
    _width = _convertToMm(value, MeasurementSystem.m);
  }

  double get widthInInches {
    return _convertFromMm(_width, MeasurementSystem.inch);
  }

  set widthInInches(double value) {
    _width = _convertToMm(value, MeasurementSystem.inch);
  }

  double get widthInFeet {
    return _convertFromMm(_width, MeasurementSystem.feet);
  }

  set widthInFeet(double value) {
    _width = _convertToMm(value, MeasurementSystem.feet);
  }

  double get heightInMillimeters {
    return _convertFromMm(_height, MeasurementSystem.mm);
  }

  set heightInMillimeters(double value) {
    _height = _convertToMm(value, MeasurementSystem.mm);
  }

  double get heightInCentimeters {
    return _convertFromMm(_height, MeasurementSystem.cm);
  }

  set heightInCentimeters(double value) {
    _height = _convertToMm(value, MeasurementSystem.cm);
  }

  double get heightInDecimeters {
    return _convertFromMm(_height, MeasurementSystem.dm);
  }

  set heightInDecimeters(double value) {
    _height = _convertToMm(value, MeasurementSystem.dm);
  }

  double get heightInMeters {
    return _convertFromMm(_height, MeasurementSystem.m);
  }

  set heightInMeters(double value) {
    _height = _convertToMm(value, MeasurementSystem.m);
  }

  double get heightInInches {
    return _convertFromMm(_height, MeasurementSystem.inch);
  }

  set heightInInches(double value) {
    _height = _convertToMm(value, MeasurementSystem.inch);
  }

  double get heightInFeet {
    return _convertFromMm(_height, MeasurementSystem.feet);
  }

  set heightInFeet(double value) {
    _height = _convertToMm(value, MeasurementSystem.feet);
  }

  static double _convertToMm(double value, MeasurementSystem system) {
    return value * system.factor;
  }

  static double _convertFromMm(double value, MeasurementSystem system) {
    return value / system.factor;
  }
}
