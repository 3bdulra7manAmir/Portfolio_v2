import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../core/constants/app_images.dart';
import '../../data/model/services_model.dart';

final List<ServicesModel> servicesData = [
  ServicesModel(
    serviceImg: AppAssets.iconsPNG.mobileAppDevelopment,
    serviceName: S.current.mobileAppDevelopmentTitle,
    serviceDescription: S.current.mobileAppDevelopmentDesc,
  ),
  ServicesModel(
    serviceImg: AppAssets.iconsPNG.crossPaltForm,
    serviceName: S.current.crossPlatformDevelopmentTitle,
    serviceDescription: S.current.crossPlatformDevelopmentDesc,
  ),
  ServicesModel(
    serviceImg: AppAssets.iconsPNG.uiUX,
    serviceName: S.current.uiUxImplementationTitle,
    serviceDescription: S.current.uiUxImplementationDesc,
  ),
  ServicesModel(
    serviceImg: AppAssets.iconsPNG.backendIntegration,
    serviceName: S.current.backendIntegrationTitle,
    serviceDescription: S.current.backendIntegrationDesc,
  ),
  ServicesModel(
    serviceImg: AppAssets.iconsPNG.deployment,
    serviceName: S.current.deploymentPublishingTitle,
    serviceDescription: S.current.deploymentPublishingDesc,
  ),
];
