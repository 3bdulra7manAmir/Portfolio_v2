import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/gridview_builder.dart';
import '../../data/model/projects_data.dart';
import 'project_card.dart';

class ProjectsGridList extends StatelessWidget {
  const ProjectsGridList({super.key});

  @override
  Widget build(BuildContext context) {
    
    return CustomGridbuilder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, mainAxisSpacing: 32.h,
        crossAxisSpacing: 32.w, childAspectRatio: 163.w / 100.h,
      ),
      itemBuilder: (_, index) {
        final serviceItem = servicesData[index];
        return ProjectCard(
          serviceImg: serviceItem.projectLogo,
          serviceName: serviceItem.projectName,
          serviceDescription: serviceItem.projectDescription,
        );
      },
      itemCount: servicesData.length,
    );
  }
}