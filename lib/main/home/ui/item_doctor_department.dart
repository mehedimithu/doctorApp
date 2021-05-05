import 'package:flutter/material.dart';
import 'package:flutter_core/common/ui/base_stateless_ui.dart';

class ItemDoctorDepartment extends BaseStatelessUI {
  final String department;

  ItemDoctorDepartment(this.department);

  var mWidth;
  var mHeight;

  @override
  Widget build(BuildContext context) {
    initResponsiveSize(context);
    mWidth = (width / 3) - 16;
    mHeight = (width / 3) + 20;
    return Container(
      child: Stack(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: mWidth,
                  height: mHeight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 6,
                          offset: Offset(1, 6),
                        ),
                      ],
                      color: Color(0xb200b4cc),
                    ),
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: mWidth,
                              height: mWidth / 2.9,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xfff2f2f2),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                child: Text(
                                  department,
                                  style: TextStyle(
                                    color: Color(0xff3d3b3d),
                                    fontSize: 13,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: Container(
              padding: EdgeInsets.all(8),
              width: mWidth,
              height: mWidth - (mWidth / 3),
              child: FlutterLogo(),
            ),
          ),
        ],
      ),
    );
  }
}
