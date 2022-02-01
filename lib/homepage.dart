import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:practice/pages/product_tile.dart';

import 'controllers/Productcontroller.dart';

class HomePage extends StatelessWidget {

var productcontroller = Get.put(ProductController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.arrow_back),
        actions: [
         IconButton(onPressed: (){}, icon: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))),
        ],
      ),
      body: Column(
        children: [
          Row(children: [
            Expanded(child:const Text("ShopX",  style: TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 32,
                        fontWeight: FontWeight.w900),)),
                IconButton(
                    icon: Icon(Icons.view_list_rounded), onPressed: () {}),
                IconButton(icon: Icon(Icons.grid_view), onPressed: () {}),
              ],
            ),
            Expanded(
            child:Obx(() =>  StaggeredGridView.countBuilder(crossAxisCount: 2,itemCount:productcontroller.productList.length,crossAxisSpacing:16,mainAxisSpacing: 16, itemBuilder: (context,index){
              return ProductTile(productcontroller.productList[index]);
            }, staggeredTileBuilder:(index)=> StaggeredTile.fit(1)))
              )

          ],)
        
      
      
    );
  }
}