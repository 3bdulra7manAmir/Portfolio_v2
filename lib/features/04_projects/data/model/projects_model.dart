import 'package:equatable/equatable.dart';


class ProjectsModel extends Equatable
{
  const ProjectsModel({
    required this.projectLogo, 
    required this.projectName, 
    required this.projectDescription,
    this.projectLinkIOS,
    this.projectLinkAndroid,
  });

  final String projectLogo;
  final String projectName;
  final String projectDescription;
  final String? projectLinkIOS;
  final String? projectLinkAndroid;
  
  @override
  List<Object?> get props => [
    projectLogo, projectName, projectDescription,
    projectLinkIOS,
    projectLinkAndroid,
  ];
}