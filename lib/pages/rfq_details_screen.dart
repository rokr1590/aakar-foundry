import 'package:aakarfoundry/themes/app_style.dart';
import 'package:aakarfoundry/utils/color_constant.dart';
import 'package:aakarfoundry/utils/size_utils.dart';
import 'package:aakarfoundry/widget/widget_buttons.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

Map list = {
  'Customer Name': 'Sanket Sunil More',
  'Part Name': 'Part Name',
  'Aakar Foundry Enquiry No. *1': '11111111111',
  'Qty Per Annum (Nos)': '10',
  'Process Reqd (HPDC, LPDC, GDC)': '10',
  'Requirements - Raw or Machined': '10',
  'Annual Tonnage - MT': '10',
};

class RFQDetails extends StatelessWidget {
  final int rfq_number;
  const RFQDetails({Key? key, required this.rfq_number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colorselect.afBlueDark,
        title: Row(
          children: [
            InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: const Icon(BootstrapIcons.chevron_left,
                  size: 30, color: Colorselect.afRedAccent),
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              "RFQ Details",
              style: AppStyle.txtPoppinsMedium24(Colors.white),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
            horizontal: getHorizontalSize(20), vertical: getVerticalSize(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...list
                        .map((key, value) => MapEntry<String, Widget>(
                            key, _rfqDetailEntry(key, value)))
                        .values
                        .toList()
                  ],
                ),
              ),
            ),
            WidgetButton(
              buttonText: 'Approve RFQ',
              onTap: () {},
            ),
          ],
        ),
      ),
    ));
  }

  Widget _rfqDetailEntry(String key, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$key : ',
              style: AppStyle.txtPoppinsMedium16(Colorselect.afRedAccent)),
          Text(value,
              style: AppStyle.txtPoppinsSemiBold24(Colorselect.afBlueDark)),
        ],
      ),
    );
  }
}
