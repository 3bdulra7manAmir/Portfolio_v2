import 'package:equatable/equatable.dart';


class ProjectsModel extends Equatable
{
  const ProjectsModel({
    required this.projectLogo, 
    required this.projectName, 
    required this.projectDescription});

  final String projectLogo;
  final String projectName;
  final String projectDescription;
  
  @override
  List<Object?> get props => [
    projectLogo, projectName, projectDescription
  ];
}