import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  late String location; //location name for the UI
  late String time; // the time in the location
  late String flag; // url to an asset flag icon
  late String url; // location url for the api end-point

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async{
    try {
      Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      String dateTime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      print(dateTime);
      print(offset);

      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));
      time = DateFormat.jm().format(now);
    }
    catch (e){
      print('Caught error: $e');
      time = 'Could not get the time';
    }
  }
}
