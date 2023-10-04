import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/product.dart';

part 'getProd.freezed.dart';
part 'getProd.g.dart';

@freezed
class GetProd with _$GetProd {

  factory GetProd( {
    @JsonKey(name:'products') @Default([]) List<Product> p,
    @Default(0) int total,
    @Default(0) int skip,
    @Default(0) int limit,
  }) = _GetProd;

  factory GetProd.fromJson(Map<String, dynamic> json) => _$GetProdFromJson(json);
}
