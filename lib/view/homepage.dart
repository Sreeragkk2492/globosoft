import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globosoft/apiservice.dart';
import 'package:globosoft/controller/homescreencontroller.dart';

class Homepage extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController(ApiService()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('products'),
      ),
      body: Obx(() {
        if (homeController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 250,
                  width: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://mansharcart.com/image/${homeController.productdata.value.product.thumb}'),
                          fit: BoxFit.fill)),
                ),
                ListTile(
                  title: Text(
                    homeController.productdata.value.product.name, 
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  subtitle:
                      Text(homeController.productdata.value.product.description ),
                ),
                Text(
                  homeController.productdata.value.product.metaDescription,
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                Text('price: ${homeController.productdata.value.product.price}'),
                Text('height: ${homeController.productdata.value.product.height}'),
                Text('rating: ${homeController.productdata.value.product.rating}'), 
              ],
            ),
          );
        }
      }),
    );
  }
}
