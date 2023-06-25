import 'package:aakarfoundry/themes/app_decoration.dart';
import 'package:aakarfoundry/themes/app_style.dart';
import 'package:aakarfoundry/utils/size_utils.dart';
import 'package:flutter/material.dart';
class ECNScreen extends StatelessWidget {
  const ECNScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(all: 20),
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context ,index){
            return Container(
              padding: getPadding(all: 10),
              margin: getMargin(bottom: 10),
              decoration: ShapeDecoration(
                  color: Color(0xFFD5E9F8),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder16)
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ECN $index",style: AppStyle.txtPoppinsMedium12(Colors.red),),
                  Padding(
                    padding: getPadding(left: 10),
                    child: Column(
                      children: [
                        Text("Part Name",style: AppStyle.txtPoppinsSemiBold18(Color(0xFF054471))),
                        Text("Customer Name",style: AppStyle.txtPoppinsRegular12(Color(0xFF647E95)),)
                      ],
                    ),
                  )
                ],
              ),
            );
          }
      ),
    );
  }
}
