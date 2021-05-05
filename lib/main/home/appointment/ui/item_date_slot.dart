import 'package:flutter/material.dart';
import 'package:flutter_core/common/ui/base_stateless_ui.dart';

class ItemDateSlot extends BaseStatelessUI {
  final String date;

  ItemDateSlot(this.date);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 2,
                  offset: Offset(0, 2),
                ),
              ],
              color: Colors.white,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 24,
            ),
            child: Row(
              children: [
                SizedBox(
                  child: Text(
                    date,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xe53e3b3e),
                      fontSize: 18,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
