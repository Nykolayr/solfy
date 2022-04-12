import 'package:flutter/material.dart';
import 'package:solfy_flutter/widgets/contact_info_item.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneModal extends StatelessWidget {
  final List<String>? phones;
  PhoneModal(this.phones);

  Widget build(BuildContext context) {
    final items = <Widget>[];
    items.add(SizedBox(height: 10.h));
    items.add(GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Icon(Icons.close, size: 20, color: Color(0xFF00B798)),
    ));
    items.add(SizedBox(height: 20.h));
    phones?.forEach((phone) {
      items.add(ContactInfoItem(SolfyIcons.telephone, phone));
    });
//    items.add(ContactInfoItem(SolfyIcons.telephone, '+7 (991) 000 00-00'));
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: items),
    );
  }
}
