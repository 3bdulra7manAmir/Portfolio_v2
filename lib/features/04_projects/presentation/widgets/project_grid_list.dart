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
        crossAxisSpacing: 32.w, childAspectRatio: 163.w / 120.h,
      ),
      itemBuilder: (_, index) {
        final item = projectsData[index];
        return ProjectCard(
          projectLogo: item.projectLogo,
          projectName: item.projectName,
          projectDescription: item.projectDescription,
          projectLinkAndroid: item.projectLinkAndroid ?? '',
          projectLinkIOS: item.projectLinkIOS ?? '',
        );
      },
      itemCount: projectsData.length,
    );
  }
}


