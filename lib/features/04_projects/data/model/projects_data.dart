import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../core/utils/functions/url_launcher/urls.dart';
import 'projects_model.dart';


final List<ProjectsModel> projectsData = [
  ProjectsModel(
    projectLogo: AppAssets.iconsPNG.fluency,
    projectName: S.current.fluency,
    projectDescription: S.current.fluencyDescription,
    projectLinkAndroid: Urls.fluencyLinkAndroid,
    projectLinkIOS: Urls.fluencyLinkIOS,
  ),
  ProjectsModel(
    projectLogo: AppAssets.iconsPNG.alHaddaf,
    projectName: S.current.alHaddaf,
    projectDescription: S.current.haddafDescription,
    projectLinkIOS: Urls.alHaddafLinkIOS,
  ),
  ProjectsModel(
    projectLogo: AppAssets.iconsPNG.sehtna,
    projectName: S.current.sehtna,
    projectDescription: S.current.sehtnaDescription,
    projectLinkAndroid: Urls.shetnaLinkAndroid,
    projectLinkIOS: Urls.shetnaLinkIOS,
  ),
  ProjectsModel(
    projectLogo: AppAssets.iconsPNG.addedPower,
    projectName: S.current.addedPower,
    projectDescription: S.current.addedPowerDescription,
    projectLinkAndroid: Urls.addedPowerLinkAndroid,
    projectLinkIOS: Urls.addedPowerLinkIOS,
  ),
  ProjectsModel(
    projectLogo: AppAssets.iconsPNG.ruknAlAqar,
    projectName: S.current.ruknAlAqar,
    projectDescription: S.current.ruknDescription,
    projectLinkAndroid: Urls.ruknAlAqarLinkAndroid,
    projectLinkIOS: Urls.ruknAlAqarLinkIOS,
  ),
  ProjectsModel(
    projectLogo: AppAssets.iconsPNG.manzoma,
    projectName: S.current.manzoma,
    projectDescription: S.current.manzomaDescription,
    projectLinkAndroid: Urls.manzomaLinkAndroid,
    projectLinkIOS: Urls.manzomaLinkIOS,
  ),
];


