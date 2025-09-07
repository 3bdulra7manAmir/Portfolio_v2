import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/gridview_builder.dart';
import '../../data/model/services_data.dart';
import 'service_card.dart';

class ServiceGridList extends StatelessWidget {
  const ServiceGridList({super.key});

  @override
  Widget build(BuildContext context) {
    
    return CustomGridbuilder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, mainAxisSpacing: 32.h,
        crossAxisSpacing: 32.w, childAspectRatio: 163.w / 100.h,
      ),
      itemBuilder: (_, index) {
        final serviceItem = servicesData[index];
        return ServiceCard(
          serviceImg: serviceItem.serviceImg,
          serviceName: serviceItem.serviceName,
          serviceDescription: serviceItem.serviceDescription,
        );
      },
      itemCount: servicesData.length,
    );
  }
}