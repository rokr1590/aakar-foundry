import 'package:aakarfoundry/pages/rfq_details_screen.dart';
import 'package:aakarfoundry/themes/app_decoration.dart';
import 'package:aakarfoundry/themes/app_style.dart';
import 'package:aakarfoundry/utils/size_utils.dart';
import 'package:flutter/material.dart';

class RFQScreen extends StatelessWidget {
  const RFQScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(all: 20),
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context ,index){
            return InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => RFQDetails(rfq_number: index)),
                );
              },
              child: Container(
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
                    Text("RFQ $index",style: AppStyle.txtPoppinsMedium12(Colors.red),),
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
              ),
            );
          }
      ),
    );
  }
}
