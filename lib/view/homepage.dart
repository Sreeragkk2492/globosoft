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
                              'https://mansharcart.com/image/${homeController.product.value.product.thumb}'),
                          fit: BoxFit.fill)),
                ),
                ListTile(
                  title: Text(
                    homeController.product.value.product.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  subtitle:
                      Text(homeController.product.value.product.description),
                ),
                Text(
                  homeController.product.value.product.metaTitle,
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                Text('price: ${homeController.product.value.product.price}'),
                Text('height: ${homeController.product.value.product.height}'),
                Text('rating: ${homeController.product.value.product.rating}'),
              ],
            ),
          );
        }
      }),
    );
  }
}
