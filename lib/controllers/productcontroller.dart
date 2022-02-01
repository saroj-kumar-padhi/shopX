// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:practice/controllers/servise/remote_services.dart';
import 'package:practice/model/product.dart';

class ProductController extends GetxController{
  var productList = <Welcome>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    fetchProducts();
    super.onInit();
  }
  
  void fetchProducts() async {
    var products = await RemoteServices.fetchProducts();
    if(products != null){
     productList.value = products as List<Welcome>; 
    }
  }
}