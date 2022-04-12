// class FormPropertyModel {
//   FormPropertyModel({
//     int index = 0,
//   })  : this.typeName = "propertyType$index",
//         this.regionIssueName = "propertyRegion$index",
//         this.marketValueName = "propertyMarket$index";

//   String typeName;

//   String regionIssueName;

//   String marketValueName;
// }

import 'package:flutter/material.dart';

class FormPropertyModel {
  FormPropertyModel(
    String uniqValue, {
    TextEditingController? type,
    TextEditingController? region,
    TextEditingController? marketValue,
  })  : this.typeName = "propertyType$uniqValue",
        this.regionIssueName = "propertyRegion$uniqValue",
        this.marketValueName = "propertyMarket$uniqValue",
        this.type = type ?? TextEditingController(),
        this.region = region ?? TextEditingController(),
        this.marketValue = marketValue ?? TextEditingController();

  final TextEditingController type;

  final TextEditingController region;

  final TextEditingController marketValue;

  String typeName;

  String regionIssueName;

  String marketValueName;
}
