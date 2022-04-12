import 'package:dio/dio.dart';
import 'package:either_dart/src/either.dart';
import 'package:solfy_flutter/models/api/catalog/brand/brand_response.dart';
import 'package:solfy_flutter/models/api/catalog/brands/brands_response.dart';

import 'package:solfy_flutter/models/api/catalog/categories/categories_request.dart';
import 'package:solfy_flutter/models/api/catalog/categories/categories_response.dart';
import 'package:solfy_flutter/models/api/catalog/filter_request.dart';
import 'package:solfy_flutter/models/api/catalog/points/points_response.dart';
import 'package:solfy_flutter/models/api/catalog/search/search_response.dart';
import 'package:solfy_flutter/models/api/catalog/search/search_request.dart';
import 'package:solfy_flutter/models/api/catalog/shop/shop_response.dart';
import 'package:solfy_flutter/models/api/catalog/shops/shops_response.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/repository/icatalog_repository.dart';
import 'package:solfy_flutter/services/api/catalog_api_client.dart';

/// Реализация репозитория, работающего с catalog-разделом API
class CatalogRepository implements ICatalogRepository {
  final CatalogApiClient _apiClient;

  /// Фильтр для категорий на экране "Магазины"
  CategoriesRequest categoriesFilter = CategoriesRequest(placeId: "1");

  SearchRequest searchRequest = SearchRequest(query: "");

  /// Фильтр для карты экрана "Магазины"
  FilterRequest categoriesMapFilter = FilterRequest(
    type: 'offline',
    sortVisible: false,
    closeSortVisible: false,
    onlineOfflineVisible: false,
  );

  /// Фильтр для карты на экране с брендами
  FilterRequest brandsMapFilter = FilterRequest(
    type: 'offline',
    sortVisible: false,
    closeSortVisible: false,
    onlineOfflineVisible: false,
  );

  /// Фильтр для брендов
  FilterRequest brandsFilter = FilterRequest(
    typeAll: true,
    sort: "popular",
  );

  FilterRequest shopsFilter = FilterRequest(
    typeAll: true,
    sort: "popular",
  );

  CatalogRepository(this._apiClient);

  @override
  Future<Either<ErrorsResponse, CategoriesResp>> getCategories(CategoriesRequest request) async {
    try {
      final response = await _apiClient.getCategories(request);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, BrandsResp>> getBrands(FilterRequest request) async {
    try {
      final response = await _apiClient.getBrands(request);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, SearchResp>> search(SearchRequest request) async {
    try {
      final response = await _apiClient.search(request);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, BrandResp>> getBrand(String id) async {
    try {
      final response = await _apiClient.getBrand(id);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, PointsResp>> getPoints(FilterRequest request) async {
    try {
      final response = await _apiClient.getPoints(request);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, ShopsResp>> getShops(FilterRequest request) async {
    try {
      final response = await _apiClient.getShops(request);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, ShopResp>> getShop(String id) async {
    try {
      final response = await _apiClient.getShop(id);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }
}
