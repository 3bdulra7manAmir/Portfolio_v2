import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../core/constants/app_images.dart';
import '../../data/model/services_model.dart';

final List<ServicesModel> servicesData = [
  ServicesModel(
    serviceImg: AppAssets.iconsSvg.mobileAppDevelopment,
    serviceName: S.current.mobileAppDevelopmentTitle,
    serviceDescription: S.current.mobileAppDevelopmentDesc,
  ),
  ServicesModel(
    serviceImg: AppAssets.iconsSvg.mobileAppDevelopment,
    serviceName: S.current.crossPlatformDevelopmentTitle,
    serviceDescription: S.current.crossPlatformDevelopmentDesc,
  ),
  ServicesModel(
    serviceImg: AppAssets.iconsSvg.mobileAppDevelopment,
    serviceName: S.current.uiUxImplementationTitle,
    serviceDescription: S.current.uiUxImplementationDesc,
  ),
  ServicesModel(
    serviceImg: AppAssets.iconsSvg.backendIntegration,
    serviceName: S.current.backendIntegrationTitle,
    serviceDescription: S.current.backendIntegrationDesc,
  ),
  ServicesModel(
    serviceImg: AppAssets.iconsSvg.mobileAppDevelopment,
    serviceName: S.current.deploymentPublishingTitle,
    serviceDescription: S.current.deploymentPublishingDesc,
  ),
];
