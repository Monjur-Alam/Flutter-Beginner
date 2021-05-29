import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  late String title; // the time in the location
  late String desc; // url to an asset flag icon
  late String url; // location url for the api end-point

  WorldTime({required this.url});

  Future<void> getData() async{
    try {
      Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      String dateTime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      print(dateTime);
      print(offset);

      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));
      title = DateFormat.jm().format(now);
    }
    catch (e){
      print('Caught error: $e');
      title = 'Could not get the time';
    }
  }
}
