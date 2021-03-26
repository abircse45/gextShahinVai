
import 'package:get/get.dart';
import 'package:getx_practice/model/hotel_model.dart';
import 'package:getx_practice/service/network_call.dart';

class AppController extends GetxController{


    var getHotel = Hotel().obs;
    var loading = true.obs;
    Service service = Service();

    @override
  void onInit() {
    super.onInit();
    getDataCalling();
  }

    void getDataCalling()async{
      loading(true);
       var result = await   service.fetchData();
       if(result!=null){
         getHotel.value = result;
       }
       loading(false);
    }
    

}