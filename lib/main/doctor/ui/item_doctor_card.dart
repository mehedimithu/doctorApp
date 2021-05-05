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
      elevation: 4,
      child: Container(
        padding: EdgeInsets.all(16),

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
