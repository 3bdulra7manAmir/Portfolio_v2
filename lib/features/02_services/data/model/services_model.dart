import 'package:equatable/equatable.dart';


class ServicesModel extends Equatable
{
  const ServicesModel({
    required this.serviceImg, 
    required this.serviceName, 
    required this.serviceDescription});

  final String serviceImg;
  final String serviceName;
  final String serviceDescription;
  
  @override
  List<Object?> get props => [
    serviceImg, serviceName, serviceDescription
  ];
}