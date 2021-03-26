import 'package:getx_practice/model/hotel_model.dart';
import 'package:http/http.dart' as http;

class Service {
  Future<Hotel> fetchData() async {
    String url = "https://deshitour.com//api/hotels/list?appKey=DeshiTour";
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var hotelData = response.body;
      return hotelFromJson(hotelData);
    }else{
      return null;
    }
  }
}
