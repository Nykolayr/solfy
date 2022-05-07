import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:solfy_flutter/main.dart';
import 'package:solfy_flutter/models/api/catalog/brand/brand_response.dart';
import 'package:solfy_flutter/models/api/catalog/brands/brands_response.dart';
import 'package:solfy_flutter/models/api/catalog/categories/categories_request.dart';
import 'package:solfy_flutter/models/api/catalog/categories/categories_response.dart';
import 'package:solfy_flutter/models/api/catalog/filter_request.dart';
import 'package:solfy_flutter/models/api/catalog/points/points_response.dart';
import 'package:solfy_flutter/models/api/catalog/search/search_request.dart';
import 'package:solfy_flutter/models/api/catalog/search/search_response.dart';
import 'package:solfy_flutter/models/api/catalog/shop/shop_response.dart';
import 'package:solfy_flutter/models/api/catalog/shops/shops_response.dart';

part 'catalog_api_client.g.dart';

// @RestApi(baseUrl: "https://api-edge.docu.ru/catalog/v1/")
abstract class CatalogApiClient {
  factory CatalogApiClient(Dio dio, {String baseUrl}) = _CatalogApiClient;

  @GET("/categories")
  Future<CategoriesResp> getCategories(@Queries() CategoriesRequest request);

  @GET("/brands")
  Future<BrandsResp> getBrands(@Queries() FilterRequest request);

  @GET("/search")
  Future<SearchResp> search(@Queries() SearchRequest request);

  @GET("/brand/{id}")
  Future<BrandResp> getBrand(@Path() String id);

  @GET("/points")
  Future<PointsResp> getPoints(@Queries() FilterRequest request);

  @GET("/shops")
  Future<ShopsResp> getShops(@Queries() FilterRequest request);

  @GET("/shop/{id}")
  Future<ShopResp> getShop(@Path() String id);
}
