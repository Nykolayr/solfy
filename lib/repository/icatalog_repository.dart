import 'package:either_dart/either.dart';
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
import 'package:solfy_flutter/models/api/errors/errors_response.dart';

/// Интерфейс репозитория, работающего с catalog-разделом API
abstract class ICatalogRepository {
  /// Получаем категории по фильтру [request]
  Future<Either<ErrorsResponse, CategoriesResp>> getCategories(CategoriesRequest request);

  /// Получаем бренды по фильтру [request]
  Future<Either<ErrorsResponse, BrandsResp>> getBrands(FilterRequest request);

  /// Поиск магазинов и категорией по query из [request]
  Future<Either<ErrorsResponse, SearchResp>> search(SearchRequest request);

  /// Получение бренда по [id]
  Future<Either<ErrorsResponse, BrandResp>> getBrand(String id);

  /// Получение точек для карты по фильтру [request]
  Future<Either<ErrorsResponse, PointsResp>> getPoints(FilterRequest request);

  /// Получение магазинов по фильтру [request]
  Future<Either<ErrorsResponse, ShopsResp>> getShops(FilterRequest request);

  /// Получение магазина по [id]
  Future<Either<ErrorsResponse, ShopResp>> getShop(String id);
}
