import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:practice/model/product.dart';

class RemoteServices {
 static var client = http.Client();

 static Future <List<Welcome>>fetchProducts() async {
   var url = Uri.parse("http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline");
http.Response response = await http.get(url);
   
       var jsonstring = response.body;
       return welcomeFromJson(jsonstring);
   

  }
}