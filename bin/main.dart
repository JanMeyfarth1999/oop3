import 'package:oop3/triangle.dart';

void main() {
  Triangle triangle1 = Triangle.cm(100, 200);
  
   
  print(triangle1.widthInMeters);
  print(triangle1.heightInMeters);

  triangle1.widthInMeters = 3;

  print(triangle1.widthInFeet);
}