import 'package:flutter_core/common/ui/base_stateless_ui.dart';
import 'package:flutter/material.dart';

class ItemDoctorList extends BaseStatelessUI {
  @override
  Widget build(BuildContext context) {
    initResponsiveSize(context);
   return Container(
     padding: EdgeInsets.all(16),
     width: width,
    child: Card(
      elevation: 1,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 20),

        child: Row(
          children: [
            Image.asset('assets/images/ic_logo_bg.png')
          ],
        )
      ),
    ),
    );
  }
}
