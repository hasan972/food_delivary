import 'package:food_delivary/utils/app_constants.dart';
import 'package:get/get.dart';
import '../api/api_clint.dart';


class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async{
    //return await apiClient.getData("/api/v1/products/popular");
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}