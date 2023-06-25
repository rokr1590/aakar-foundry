import 'package:aakarfoundry/themes/app_style.dart';
import 'package:flutter/material.dart';

class RFQDetails extends StatelessWidget {
  final int rfq_number;
  const RFQDetails({Key? key,required this.rfq_number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("RFQ $rfq_number"),
          ),
          body: Container(
            child:Center(
              child: Text("RFQ DETAILS of RFQ $rfq_number",style: AppStyle.txtPoppinsBold64(Colors.red),),
            )
          ),
        )
    );
  }
}
