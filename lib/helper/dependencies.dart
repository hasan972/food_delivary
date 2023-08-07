import 'package:food_delivary/controllers/popular_product_controller.dart';
import 'package:food_delivary/data/api/api_clint.dart';
import 'package:food_delivary/data/repository/popular_product_repo.dart';
import 'package:food_delivary/utils/app_constants.dart';
import 'package:get/get.dart';

Future <void> init()async{
Get.lazyPut(() => ApiClient(appBaseUrl:AppConstants.BASE_URL));

//repos
Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

//controllers
Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
