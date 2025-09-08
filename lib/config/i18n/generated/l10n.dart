// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `خطأ`
  String get error {
    return Intl.message('خطأ', name: 'error', desc: '', args: []);
  }

  /// `الرئيسيـة`
  String get home {
    return Intl.message('الرئيسيـة', name: 'home', desc: '', args: []);
  }

  /// `خدماتي`
  String get services {
    return Intl.message('خدماتي', name: 'services', desc: '', args: []);
  }

  /// `عني`
  String get aboutMe {
    return Intl.message('عني', name: 'aboutMe', desc: '', args: []);
  }

  /// `مشاريعي`
  String get myProjects {
    return Intl.message('مشاريعي', name: 'myProjects', desc: '', args: []);
  }

  /// `السيرة الذاتية`
  String get resume {
    return Intl.message('السيرة الذاتية', name: 'resume', desc: '', args: []);
  }

  /// `داكن`
  String get dark {
    return Intl.message('داكن', name: 'dark', desc: '', args: []);
  }

  /// `فاتح`
  String get light {
    return Intl.message('فاتح', name: 'light', desc: '', args: []);
  }

  /// `الشعار`
  String get logo {
    return Intl.message('الشعار', name: 'logo', desc: '', args: []);
  }

  /// `وظفني`
  String get hireMe {
    return Intl.message('وظفني', name: 'hireMe', desc: '', args: []);
  }

  /// `تواصل معي`
  String get contactMe {
    return Intl.message('تواصل معي', name: 'contactMe', desc: '', args: []);
  }

  /// `اهلا, انا`
  String get hi {
    return Intl.message('اهلا, انا', name: 'hi', desc: '', args: []);
  }

  /// `عبدالرحمن امير`
  String get AbdoAmir {
    return Intl.message('عبدالرحمن امير', name: 'AbdoAmir', desc: '', args: []);
  }

  /// `مطور فلاتر`
  String get role {
    return Intl.message('مطور فلاتر', name: 'role', desc: '', args: []);
  }

  /// `تحميل السيرة الذاتية`
  String get downloadCV {
    return Intl.message(
      'تحميل السيرة الذاتية',
      name: 'downloadCV',
      desc: '',
      args: [],
    );
  }

  /// `خبرة`
  String get experience {
    return Intl.message('خبرة', name: 'experience', desc: '', args: []);
  }

  /// `مشاريع`
  String get projects {
    return Intl.message('مشاريع', name: 'projects', desc: '', args: []);
  }

  /// `عملاء سعيدون`
  String get happyClients {
    return Intl.message(
      'عملاء سعيدون',
      name: 'happyClients',
      desc: '',
      args: [],
    );
  }

  /// `تطوير تطبيقات الموبايل (iOS و Android)`
  String get mobileAppDevelopmentTitle {
    return Intl.message(
      'تطوير تطبيقات الموبايل (iOS و Android)',
      name: 'mobileAppDevelopmentTitle',
      desc: '',
      args: [],
    );
  }

  /// `أقوم بتطوير تطبيقات موبايل عالية الجودة لكلٍ من iOS و Android باستخدام Flutter. أركز على تقديم تطبيقات سريعة الاستجابة وسهلة الاستخدام تشبه التطبيقات الأصلية على كل منصة. أضمن تنقلًا سلسًا، وتصميمًا بديهيًا، وأداءً ممتازًا عبر مختلف الأجهزة.`
  String get mobileAppDevelopmentDesc {
    return Intl.message(
      'أقوم بتطوير تطبيقات موبايل عالية الجودة لكلٍ من iOS و Android باستخدام Flutter. أركز على تقديم تطبيقات سريعة الاستجابة وسهلة الاستخدام تشبه التطبيقات الأصلية على كل منصة. أضمن تنقلًا سلسًا، وتصميمًا بديهيًا، وأداءً ممتازًا عبر مختلف الأجهزة.',
      name: 'mobileAppDevelopmentDesc',
      desc: '',
      args: [],
    );
  }

  /// `التطوير متعدد المنصات`
  String get crossPlatformDevelopmentTitle {
    return Intl.message(
      'التطوير متعدد المنصات',
      name: 'crossPlatformDevelopmentTitle',
      desc: '',
      args: [],
    );
  }

  /// `أبني تطبيقات تعمل بسلاسة على منصات متعددة باستخدام كود Flutter واحد. هذا الأسلوب يوفر الوقت ويقلل التكاليف ويضمن أداءً وتصميمًا متناسقًا. سواء كان التطبيق يعمل على Android أو iOS أو الويب أو سطح المكتب، أحرص على أن يتكيف بسلاسة.`
  String get crossPlatformDevelopmentDesc {
    return Intl.message(
      'أبني تطبيقات تعمل بسلاسة على منصات متعددة باستخدام كود Flutter واحد. هذا الأسلوب يوفر الوقت ويقلل التكاليف ويضمن أداءً وتصميمًا متناسقًا. سواء كان التطبيق يعمل على Android أو iOS أو الويب أو سطح المكتب، أحرص على أن يتكيف بسلاسة.',
      name: 'crossPlatformDevelopmentDesc',
      desc: '',
      args: [],
    );
  }

  /// `تنفيذ واجهات وتجربة المستخدم (UI/UX)`
  String get uiUxImplementationTitle {
    return Intl.message(
      'تنفيذ واجهات وتجربة المستخدم (UI/UX)',
      name: 'uiUxImplementationTitle',
      desc: '',
      args: [],
    );
  }

  /// `أحوّل النماذج التصميمية من أدوات مثل Figma إلى واجهات Flutter عملية ومتقنة. أركز على تصميمات متجاوبة، وخطوط واضحة، ورسوم متحركة جذابة. والنتيجة هي تجربة مستخدم بصرية ممتعة وسهلة الاستخدام.`
  String get uiUxImplementationDesc {
    return Intl.message(
      'أحوّل النماذج التصميمية من أدوات مثل Figma إلى واجهات Flutter عملية ومتقنة. أركز على تصميمات متجاوبة، وخطوط واضحة، ورسوم متحركة جذابة. والنتيجة هي تجربة مستخدم بصرية ممتعة وسهلة الاستخدام.',
      name: 'uiUxImplementationDesc',
      desc: '',
      args: [],
    );
  }

  /// `تكامل مع الخوادم (Backend Integration)`
  String get backendIntegrationTitle {
    return Intl.message(
      'تكامل مع الخوادم (Backend Integration)',
      name: 'backendIntegrationTitle',
      desc: '',
      args: [],
    );
  }

  /// `أربط التطبيقات بالخدمات الخلفية وواجهات الـ APIs لإضفاء الحيوية عليها. بخبرتي مع Firebase وواجهات REST APIs أضمن تحديثات في الوقت الحقيقي ومعالجة بيانات آمنة. من تسجيل الدخول إلى تخزين البيانات، أتأكد أن كل شيء يعمل بانسيابية.`
  String get backendIntegrationDesc {
    return Intl.message(
      'أربط التطبيقات بالخدمات الخلفية وواجهات الـ APIs لإضفاء الحيوية عليها. بخبرتي مع Firebase وواجهات REST APIs أضمن تحديثات في الوقت الحقيقي ومعالجة بيانات آمنة. من تسجيل الدخول إلى تخزين البيانات، أتأكد أن كل شيء يعمل بانسيابية.',
      name: 'backendIntegrationDesc',
      desc: '',
      args: [],
    );
  }

  /// `النشر والإصدار`
  String get deploymentPublishingTitle {
    return Intl.message(
      'النشر والإصدار',
      name: 'deploymentPublishingTitle',
      desc: '',
      args: [],
    );
  }

  /// `أقوم بإعداد التطبيقات للنشر وأرشدها خلال عملية الإطلاق على متجر Google Play ومتجر App Store. يشمل ذلك تحسين التطبيق، إعداد بيانات المتجر، والالتزام بمتطلبات المنصات. الهدف هو إتاحة تطبيقك للمستخدمين مع عملية إطلاق سلسة.`
  String get deploymentPublishingDesc {
    return Intl.message(
      'أقوم بإعداد التطبيقات للنشر وأرشدها خلال عملية الإطلاق على متجر Google Play ومتجر App Store. يشمل ذلك تحسين التطبيق، إعداد بيانات المتجر، والالتزام بمتطلبات المنصات. الهدف هو إتاحة تطبيقك للمستخدمين مع عملية إطلاق سلسة.',
      name: 'deploymentPublishingDesc',
      desc: '',
      args: [],
    );
  }

  /// `من أنا`
  String get whoIAM {
    return Intl.message('من أنا', name: 'whoIAM', desc: '', args: []);
  }

  /// `أنا مطور Flutter مبتدئ شغوف ببناء تطبيقات موبايل عالية الجودة تعمل عبر الأنظمة المختلفة. أتقن تصميم واجهات المستخدم المتجاوبة ولدي خبرة قوية في إدارة الحالة باستخدام BLoC و Cubit و Riverpod. كما أجيد استخدام ScreenUtil لجعل الواجهات متجاوبة، و Shimmer لعرض الهياكل العظمية، وإدارة التخزين المؤقت بكفاءة باستخدام Hive و SharedPreferences و GetStorage.\n\nتشمل خبرتي أيضًا خدمات Firebase مثل تسجيل الدخول والمصادقة، تسجيل الدخول عبر Google، قاعدة البيانات اللحظية، التخزين السحابي، وتدفقات تسجيل المستخدم. أدمج كذلك نظام الثيمات، دعم تعدد اللغات (Localization)، التحميل المسبق للصور، وتشغيل الفيديو مع دعم Picture-in-Picture لتقديم تجارب سلسة للمستخدم. ومع تركيزي القوي على معمارية نظيفة (Clean Architecture) ومبادئ البرمجة كائنية التوجه (OOP)، أضمن كتابة شيفرة قابلة للتوسع والصيانة بكفاءة.\n\nبعيدًا عن تطوير التطبيقات، لدي شغف بتعديل ألعاب Call of Duty واستكشاف آلياتها وصناعة محتوى مخصص. كما أنني أستمتع بالعمل بلغة Python، خصوصًا في كتابة السكربتات وأدوات الأتمتة لتبسيط المهام وحل التحديات العملية. بدافعي وفضولي القوي أحب الجمع بين تطوير Flutter واهتماماتي الأخرى في البرمجة والتعديل لدفع الإبداع والتقنية إلى الأمام.`
  String get aboutMeDescription {
    return Intl.message(
      'أنا مطور Flutter مبتدئ شغوف ببناء تطبيقات موبايل عالية الجودة تعمل عبر الأنظمة المختلفة. أتقن تصميم واجهات المستخدم المتجاوبة ولدي خبرة قوية في إدارة الحالة باستخدام BLoC و Cubit و Riverpod. كما أجيد استخدام ScreenUtil لجعل الواجهات متجاوبة، و Shimmer لعرض الهياكل العظمية، وإدارة التخزين المؤقت بكفاءة باستخدام Hive و SharedPreferences و GetStorage.\n\nتشمل خبرتي أيضًا خدمات Firebase مثل تسجيل الدخول والمصادقة، تسجيل الدخول عبر Google، قاعدة البيانات اللحظية، التخزين السحابي، وتدفقات تسجيل المستخدم. أدمج كذلك نظام الثيمات، دعم تعدد اللغات (Localization)، التحميل المسبق للصور، وتشغيل الفيديو مع دعم Picture-in-Picture لتقديم تجارب سلسة للمستخدم. ومع تركيزي القوي على معمارية نظيفة (Clean Architecture) ومبادئ البرمجة كائنية التوجه (OOP)، أضمن كتابة شيفرة قابلة للتوسع والصيانة بكفاءة.\n\nبعيدًا عن تطوير التطبيقات، لدي شغف بتعديل ألعاب Call of Duty واستكشاف آلياتها وصناعة محتوى مخصص. كما أنني أستمتع بالعمل بلغة Python، خصوصًا في كتابة السكربتات وأدوات الأتمتة لتبسيط المهام وحل التحديات العملية. بدافعي وفضولي القوي أحب الجمع بين تطوير Flutter واهتماماتي الأخرى في البرمجة والتعديل لدفع الإبداع والتقنية إلى الأمام.',
      name: 'aboutMeDescription',
      desc: '',
      args: [],
    );
  }

  /// `فلونسي`
  String get fluency {
    return Intl.message('فلونسي', name: 'fluency', desc: '', args: []);
  }

  /// `Fluency هي منصة سعودية تتيح للمستخدمين ممارسة اللغة الإنجليزية مع معلمين أجانب محترفين من جميع أنحاء العالم. تساعد الأفراد على تطوير مهاراتهم اللغوية في المجالات المهنية والتعليمية، وكذلك عند السفر إلى الخارج حيث تكون اللغة الإنجليزية ضرورية غالبًا.`
  String get fluencyDescription {
    return Intl.message(
      'Fluency هي منصة سعودية تتيح للمستخدمين ممارسة اللغة الإنجليزية مع معلمين أجانب محترفين من جميع أنحاء العالم. تساعد الأفراد على تطوير مهاراتهم اللغوية في المجالات المهنية والتعليمية، وكذلك عند السفر إلى الخارج حيث تكون اللغة الإنجليزية ضرورية غالبًا.',
      name: 'fluencyDescription',
      desc: '',
      args: [],
    );
  }

  /// `الهداف`
  String get alHaddaf {
    return Intl.message('الهداف', name: 'alHaddaf', desc: '', args: []);
  }

  /// `الهداف هو المنصة المثالية للرياضيين والمدربين وعشاق الرياضة! أنشئ ملفك كلاعب أو مدرب واستعرض إنجازاتك وإحصائياتك. تسويق المواهب: روّج لمهاراتك وتواصل مع الأندية ووكلاء الرياضة. رفع الفيديوهات والصور: شارك أفضل لحظاتك وأبرز أداءك. تواصل بسهولة: تفاعل مع الأندية والمدربين الرياضيين بكل سلاسة.`
  String get haddafDescription {
    return Intl.message(
      'الهداف هو المنصة المثالية للرياضيين والمدربين وعشاق الرياضة! أنشئ ملفك كلاعب أو مدرب واستعرض إنجازاتك وإحصائياتك. تسويق المواهب: روّج لمهاراتك وتواصل مع الأندية ووكلاء الرياضة. رفع الفيديوهات والصور: شارك أفضل لحظاتك وأبرز أداءك. تواصل بسهولة: تفاعل مع الأندية والمدربين الرياضيين بكل سلاسة.',
      name: 'haddafDescription',
      desc: '',
      args: [],
    );
  }

  /// `صحتنا`
  String get sehtna {
    return Intl.message('صحتنا', name: 'sehtna', desc: '', args: []);
  }

  /// `صحتنا هو حل متكامل لإدارة الرعاية الصحية مصمم لتبسيط العمليات للمستشفيات والأطباء والمرضى. سواء كنت تدير المواعيد، أو تصل إلى السجلات الطبية، أو تتابع تاريخ المريض، فإن صحتنا يوفر منصة قوية وسهلة الاستخدام مصممة لتلبية احتياجات الرعاية الصحية الحديثة.`
  String get sehtnaDescription {
    return Intl.message(
      'صحتنا هو حل متكامل لإدارة الرعاية الصحية مصمم لتبسيط العمليات للمستشفيات والأطباء والمرضى. سواء كنت تدير المواعيد، أو تصل إلى السجلات الطبية، أو تتابع تاريخ المريض، فإن صحتنا يوفر منصة قوية وسهلة الاستخدام مصممة لتلبية احتياجات الرعاية الصحية الحديثة.',
      name: 'sehtnaDescription',
      desc: '',
      args: [],
    );
  }

  /// `ادد باور`
  String get addedPower {
    return Intl.message('ادد باور', name: 'addedPower', desc: '', args: []);
  }

  /// `أدِد باور هو حلك الموثوق لشراء قطع غيار السيارات الأصلية وعالية الجودة مباشرة من الموردين المعتمدين. سواء كنت مالك سيارة أو مختص صيانة، يوفر لك تطبيقنا وصولًا سريعًا وآمنًا إلى القطع التي تحتاجها بكل سهولة من خلال هاتفك.`
  String get addedPowerDescription {
    return Intl.message(
      'أدِد باور هو حلك الموثوق لشراء قطع غيار السيارات الأصلية وعالية الجودة مباشرة من الموردين المعتمدين. سواء كنت مالك سيارة أو مختص صيانة، يوفر لك تطبيقنا وصولًا سريعًا وآمنًا إلى القطع التي تحتاجها بكل سهولة من خلال هاتفك.',
      name: 'addedPowerDescription',
      desc: '',
      args: [],
    );
  }

  /// `ركن العقار`
  String get ruknAlAqar {
    return Intl.message('ركن العقار', name: 'ruknAlAqar', desc: '', args: []);
  }

  /// `اكتشف طريقة أذكى لشراء وبيع وتأجير الشقق مع ركن العقار – شريكك الموثوق في مجال العقارات. سواء كنت تبحث عن منزل أحلامك، أو تعرض عقارًا للبيع، أو تبحث عن إيجار، يوفر لك تطبيقنا تجربة سهلة وسريعة ومصممة خصيصًا لتلبية احتياجاتك.`
  String get ruknDescription {
    return Intl.message(
      'اكتشف طريقة أذكى لشراء وبيع وتأجير الشقق مع ركن العقار – شريكك الموثوق في مجال العقارات. سواء كنت تبحث عن منزل أحلامك، أو تعرض عقارًا للبيع، أو تبحث عن إيجار، يوفر لك تطبيقنا تجربة سهلة وسريعة ومصممة خصيصًا لتلبية احتياجاتك.',
      name: 'ruknDescription',
      desc: '',
      args: [],
    );
  }

  /// `منظومة`
  String get manzoma {
    return Intl.message('منظومة', name: 'manzoma', desc: '', args: []);
  }

  /// `منظومة هي أداة ذكية وقوية لإدارة سير العمل، صممت لمساعدة الأفراد والفرق على تنظيم المهام والتعاون بفاعلية. تعمل على تبسيط التواصل بين أعضاء الفريق وتقليل العمل اليدوي وزيادة الإنتاجية بشكل عام. مع منظومة يمكنك متابعة التقدم وتوزيع المسؤوليات والبقاء مركزًا على الأهداف. سواء كنت فريقًا صغيرًا أو مؤسسة كبيرة، فإن منظومة تتكيف مع احتياجات سير عملك.`
  String get manzomaDescription {
    return Intl.message(
      'منظومة هي أداة ذكية وقوية لإدارة سير العمل، صممت لمساعدة الأفراد والفرق على تنظيم المهام والتعاون بفاعلية. تعمل على تبسيط التواصل بين أعضاء الفريق وتقليل العمل اليدوي وزيادة الإنتاجية بشكل عام. مع منظومة يمكنك متابعة التقدم وتوزيع المسؤوليات والبقاء مركزًا على الأهداف. سواء كنت فريقًا صغيرًا أو مؤسسة كبيرة، فإن منظومة تتكيف مع احتياجات سير عملك.',
      name: 'manzomaDescription',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
