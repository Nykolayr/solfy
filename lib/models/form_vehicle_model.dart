import 'package:flutter/material.dart';

class FormVehicleModel {
  FormVehicleModel(
    String uniqueValue, {
    TextEditingController? type,
    TextEditingController? model,
    TextEditingController? yearIssue,
    TextEditingController? marketValue,
  })  : this.typeName = "vehicleType$uniqueValue",
        this.modelName = "vehicleModel$uniqueValue",
        this.yearIssueName = "vehicleYear$uniqueValue",
        this.marketValueName = "vehicleMarket$uniqueValue",
        this.type = type ?? TextEditingController(),
        this.model = model ?? TextEditingController(),
        this.yearIssue = yearIssue ?? TextEditingController(),
        this.marketValue = marketValue ?? TextEditingController();

  final String typeName;

  final String modelName;

  final String yearIssueName;

  final String marketValueName;

  final TextEditingController type;

  final TextEditingController model;

  final TextEditingController yearIssue;

  final TextEditingController marketValue;
}
