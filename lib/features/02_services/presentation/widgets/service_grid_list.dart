import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/ui/responsive.dart';
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
        crossAxisSpacing: 32.w, childAspectRatio:
        (DeviceTypeHelper.instance.isMobile ? 163.w : 163.w) / (DeviceTypeHelper.instance.isMobile ? 35.h : 100.h),
      ),
      itemBuilder: (_, index) {
        final item = servicesData[index];
        return ServiceCard(
          serviceImg: item.serviceImg,
          serviceName: item.serviceName,
          serviceDescription: item.serviceDescription,
        );
      },
      itemCount: servicesData.length,
    );
  }
}