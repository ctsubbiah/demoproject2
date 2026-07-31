import 'package:hive_flutter/hive_flutter.dart';


@HiveType(typeId: 0)
class  Usermodel extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String email;
  Usermodel({required this.name,required this.email});

}

  
