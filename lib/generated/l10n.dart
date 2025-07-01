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

  /// `Welcome, {name}`
  String welcome(Object name) {
    return Intl.message(
      'Welcome, $name',
      name: 'welcome',
      desc: '',
      args: [name],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Your activity calendar`
  String get yourActivityCalendar {
    return Intl.message(
      'Your activity calendar',
      name: 'yourActivityCalendar',
      desc: '',
      args: [],
    );
  }

  /// `Your today's plan`
  String get yourTodaysPlan {
    return Intl.message(
      'Your today\'s plan',
      name: 'yourTodaysPlan',
      desc: '',
      args: [],
    );
  }

  /// `More plan`
  String get morePlan {
    return Intl.message('More plan', name: 'morePlan', desc: '', args: []);
  }

  /// `Daily motivation`
  String get dailyMotivation {
    return Intl.message(
      'Daily motivation',
      name: 'dailyMotivation',
      desc: '',
      args: [],
    );
  }

  /// `Author: {author}`
  String author(Object author) {
    return Intl.message(
      'Author: $author',
      name: 'author',
      desc: '',
      args: [author],
    );
  }

  /// `Recomendations`
  String get recomendations {
    return Intl.message(
      'Recomendations',
      name: 'recomendations',
      desc: '',
      args: [],
    );
  }

  /// `Catalog`
  String get catalog {
    return Intl.message('Catalog', name: 'catalog', desc: '', args: []);
  }

  /// `My plan`
  String get myPlan {
    return Intl.message('My plan', name: 'myPlan', desc: '', args: []);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Browse habits`
  String get browseHabits {
    return Intl.message(
      'Browse habits',
      name: 'browseHabits',
      desc: '',
      args: [],
    );
  }

  /// `Browse`
  String get browse {
    return Intl.message('Browse', name: 'browse', desc: '', args: []);
  }

  /// `Category`
  String get category {
    return Intl.message('Category', name: 'category', desc: '', args: []);
  }

  /// `Habits`
  String get habits {
    return Intl.message('Habits', name: 'habits', desc: '', args: []);
  }

  /// `No habits found.`
  String get noHabitsFound {
    return Intl.message(
      'No habits found.',
      name: 'noHabitsFound',
      desc: '',
      args: [],
    );
  }

  /// `Search Results`
  String get searchResults {
    return Intl.message(
      'Search Results',
      name: 'searchResults',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message('Details', name: 'details', desc: '', args: []);
  }

  /// `Why:`
  String get why {
    return Intl.message('Why:', name: 'why', desc: '', args: []);
  }

  /// `Takes minutes:`
  String get takesMinutes {
    return Intl.message(
      'Takes minutes:',
      name: 'takesMinutes',
      desc: '',
      args: [],
    );
  }

  /// `Days:`
  String get days {
    return Intl.message('Days:', name: 'days', desc: '', args: []);
  }

  /// `Tips:`
  String get tips {
    return Intl.message('Tips:', name: 'tips', desc: '', args: []);
  }

  /// `Habit is already in your plan. Good job! `
  String get habitIsAlreadyInYourPlanGoodJob {
    return Intl.message(
      'Habit is already in your plan. Good job! ',
      name: 'habitIsAlreadyInYourPlanGoodJob',
      desc: '',
      args: [],
    );
  }

  /// `Add To Plan`
  String get addToPlan {
    return Intl.message('Add To Plan', name: 'addToPlan', desc: '', args: []);
  }

  /// `You don't have any plans on this day.\nTap + to add a new habit!`
  String get youDontHaveAnyPlansOnThisDayntapToAdd {
    return Intl.message(
      'You don\'t have any plans on this day.\nTap + to add a new habit!',
      name: 'youDontHaveAnyPlansOnThisDayntapToAdd',
      desc: '',
      args: [],
    );
  }

  /// `Great job! You completed {doneHabits} out of {max} habits {dayText}. 😊`
  String
  greatJobYouCompletedStatenumberofdonehabitsOutOfStatehabitinfolengthHabitsStatetextofdaytolowercase(
    Object doneHabits,
    Object max,
    Object dayText,
  ) {
    return Intl.message(
      'Great job! You completed $doneHabits out of $max habits $dayText. 😊',
      name:
          'greatJobYouCompletedStatenumberofdonehabitsOutOfStatehabitinfolengthHabitsStatetextofdaytolowercase',
      desc: '',
      args: [doneHabits, max, dayText],
    );
  }

  /// `Create your own habit`
  String get createYourOwnHabit {
    return Intl.message(
      'Create your own habit',
      name: 'createYourOwnHabit',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get title {
    return Intl.message('Title', name: 'title', desc: '', args: []);
  }

  /// `Description`
  String get description {
    return Intl.message('Description', name: 'description', desc: '', args: []);
  }

  /// `Estimated time(minute)`
  String get estimatedTimeminute {
    return Intl.message(
      'Estimated time(minute)',
      name: 'estimatedTimeminute',
      desc: '',
      args: [],
    );
  }

  /// `Days that you want to do`
  String get daysThatYouWantToDo {
    return Intl.message(
      'Days that you want to do',
      name: 'daysThatYouWantToDo',
      desc: '',
      args: [],
    );
  }

  /// `Add more details to clarify your habit`
  String get addMoreDetailsToClarifyYourHabit {
    return Intl.message(
      'Add more details to clarify your habit',
      name: 'addMoreDetailsToClarifyYourHabit',
      desc: '',
      args: [],
    );
  }

  /// `Tip to habit`
  String get tipToHabit {
    return Intl.message('Tip to habit', name: 'tipToHabit', desc: '', args: []);
  }

  /// `Tip description`
  String get tipDescription {
    return Intl.message(
      'Tip description',
      name: 'tipDescription',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message('Create', name: 'create', desc: '', args: []);
  }

  /// `{takesTime} minutes`
  String takestimeMinutes(Object takesTime) {
    return Intl.message(
      '$takesTime minutes',
      name: 'takestimeMinutes',
      desc: '',
      args: [takesTime],
    );
  }

  /// `Add a new routine`
  String get addANewRoutine {
    return Intl.message(
      'Add a new routine',
      name: 'addANewRoutine',
      desc: '',
      args: [],
    );
  }

  /// `Browse rountines`
  String get browseRountines {
    return Intl.message(
      'Browse rountines',
      name: 'browseRountines',
      desc: '',
      args: [],
    );
  }

  /// `Create Own`
  String get createOwn {
    return Intl.message('Create Own', name: 'createOwn', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Help & Support`
  String get helpSupport {
    return Intl.message(
      'Help & Support',
      name: 'helpSupport',
      desc: '',
      args: [],
    );
  }

  /// `About app`
  String get aboutApp {
    return Intl.message('About app', name: 'aboutApp', desc: '', args: []);
  }

  /// `Not Found`
  String get notFound {
    return Intl.message('Not Found', name: 'notFound', desc: '', args: []);
  }

  /// `No`
  String get no {
    return Intl.message('No', name: 'no', desc: '', args: []);
  }

  /// `Yes`
  String get yes {
    return Intl.message('Yes', name: 'yes', desc: '', args: []);
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Monday`
  String get monday {
    return Intl.message('Monday', name: 'monday', desc: '', args: []);
  }

  /// `Tuesday`
  String get tuesday {
    return Intl.message('Tuesday', name: 'tuesday', desc: '', args: []);
  }

  /// `Wednesday`
  String get wednesday {
    return Intl.message('Wednesday', name: 'wednesday', desc: '', args: []);
  }

  /// `Thursday`
  String get thursday {
    return Intl.message('Thursday', name: 'thursday', desc: '', args: []);
  }

  /// `Friday`
  String get friday {
    return Intl.message('Friday', name: 'friday', desc: '', args: []);
  }

  /// `Saturday`
  String get saturday {
    return Intl.message('Saturday', name: 'saturday', desc: '', args: []);
  }

  /// `Sunday`
  String get sunday {
    return Intl.message('Sunday', name: 'sunday', desc: '', args: []);
  }

  /// `Your yesterday plan`
  String get yourYesterdayPlan {
    return Intl.message(
      'Your yesterday plan',
      name: 'yourYesterdayPlan',
      desc: '',
      args: [],
    );
  }

  /// `Your tomorrow plan`
  String get yourTomorrowPlan {
    return Intl.message(
      'Your tomorrow plan',
      name: 'yourTomorrowPlan',
      desc: '',
      args: [],
    );
  }

  /// `Your plan of {day} {month}`
  String yourPlanOfDayMonth(Object day, Object month) {
    return Intl.message(
      'Your plan of $day $month',
      name: 'yourPlanOfDayMonth',
      desc: '',
      args: [day, month],
    );
  }

  /// `January`
  String get january {
    return Intl.message('January', name: 'january', desc: '', args: []);
  }

  /// `February`
  String get february {
    return Intl.message('February', name: 'february', desc: '', args: []);
  }

  /// `March`
  String get march {
    return Intl.message('March', name: 'march', desc: '', args: []);
  }

  /// `April`
  String get april {
    return Intl.message('April', name: 'april', desc: '', args: []);
  }

  /// `May`
  String get may {
    return Intl.message('May', name: 'may', desc: '', args: []);
  }

  /// `June`
  String get june {
    return Intl.message('June', name: 'june', desc: '', args: []);
  }

  /// `July`
  String get july {
    return Intl.message('July', name: 'july', desc: '', args: []);
  }

  /// `August`
  String get august {
    return Intl.message('August', name: 'august', desc: '', args: []);
  }

  /// `September`
  String get september {
    return Intl.message('September', name: 'september', desc: '', args: []);
  }

  /// `October`
  String get october {
    return Intl.message('October', name: 'october', desc: '', args: []);
  }

  /// `November`
  String get november {
    return Intl.message('November', name: 'november', desc: '', args: []);
  }

  /// `December`
  String get december {
    return Intl.message('December', name: 'december', desc: '', args: []);
  }

  /// `For the language change to take effect correctly, please reopen the app.`
  String get forTheLanguageChangeToTakeEffectCorrectlyPleaseReopen {
    return Intl.message(
      'For the language change to take effect correctly, please reopen the app.',
      name: 'forTheLanguageChangeToTakeEffectCorrectlyPleaseReopen',
      desc: '',
      args: [],
    );
  }

  /// `Choose a language`
  String get chooseALanguage {
    return Intl.message(
      'Choose a language',
      name: 'chooseALanguage',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get enterYourName {
    return Intl.message(
      'Enter your name',
      name: 'enterYourName',
      desc: '',
      args: [],
    );
  }

  /// `Name cannot be empty`
  String get nameCannotBeEmpty {
    return Intl.message(
      'Name cannot be empty',
      name: 'nameCannotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Let's start`
  String get letsStart {
    return Intl.message('Let\'s start', name: 'letsStart', desc: '', args: []);
  }

  /// `Today's habit is the reflection of your future life.`
  String get todaysHabitIsTheReflectionOfYourFutureLife {
    return Intl.message(
      'Today\'s habit is the reflection of your future life.',
      name: 'todaysHabitIsTheReflectionOfYourFutureLife',
      desc: '',
      args: [],
    );
  }

  /// `Create a habit`
  String get createAHabit {
    return Intl.message(
      'Create a habit',
      name: 'createAHabit',
      desc: '',
      args: [],
    );
  }

  /// `Choose a habit from ready-made samples,\nor create your own personal one to match your goals.`
  String get chooseAHabitFromReadymadeSamplesnorCreateYourOwnPersonal {
    return Intl.message(
      'Choose a habit from ready-made samples,\\nor create your own personal one to match your goals.',
      name: 'chooseAHabitFromReadymadeSamplesnorCreateYourOwnPersonal',
      desc: '',
      args: [],
    );
  }

  /// `Track your progress`
  String get trackYourProgress {
    return Intl.message(
      'Track your progress',
      name: 'trackYourProgress',
      desc: '',
      args: [],
    );
  }

  /// `Stay motivated with a heatmap calendar\nand plan your day with clarity.`
  String get stayMotivatedWithAHeatmapCalendarnandPlanYourDayWith {
    return Intl.message(
      'Stay motivated with a heatmap calendar\\nand plan your day with clarity.',
      name: 'stayMotivatedWithAHeatmapCalendarnandPlanYourDayWith',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message('Start', name: 'start', desc: '', args: []);
  }

  /// `What is Ádet?`
  String get whatIsDet {
    return Intl.message('What is Ádet?', name: 'whatIsDet', desc: '', args: []);
  }

  /// `Ádet is a smart and elegant habit tracker that helps you take small steps toward big life transformations. Whether you want to build a daily meditation routine, drink more water, or master new skills — Ádet will be your supportive companion along the way.`
  String get detIsASmartAndElegantHabitTrackerThatHelps {
    return Intl.message(
      'Ádet is a smart and elegant habit tracker that helps you take small steps toward big life transformations. Whether you want to build a daily meditation routine, drink more water, or master new skills — Ádet will be your supportive companion along the way.',
      name: 'detIsASmartAndElegantHabitTrackerThatHelps',
      desc: '',
      args: [],
    );
  }

  /// `Key Features`
  String get keyFeatures {
    return Intl.message(
      'Key Features',
      name: 'keyFeatures',
      desc: '',
      args: [],
    );
  }

  /// `Ready-made and Custom Habits`
  String get readymadeAndCustomHabits {
    return Intl.message(
      'Ready-made and Custom Habits',
      name: 'readymadeAndCustomHabits',
      desc: '',
      args: [],
    );
  }

  /// `Choose from carefully crafted habit templates or create your own personalized routines.`
  String get chooseFromCarefullyCraftedHabitTemplatesOrCreateYourOwn {
    return Intl.message(
      'Choose from carefully crafted habit templates or create your own personalized routines.',
      name: 'chooseFromCarefullyCraftedHabitTemplatesOrCreateYourOwn',
      desc: '',
      args: [],
    );
  }

  /// `Heatmap Progress Tracker`
  String get heatmapProgressTracker {
    return Intl.message(
      'Heatmap Progress Tracker',
      name: 'heatmapProgressTracker',
      desc: '',
      args: [],
    );
  }

  /// `Visualize your daily consistency with an interactive heatmap calendar.`
  String get visualizeYourDailyConsistencyWithAnInteractiveHeatmapCalendar {
    return Intl.message(
      'Visualize your daily consistency with an interactive heatmap calendar.',
      name: 'visualizeYourDailyConsistencyWithAnInteractiveHeatmapCalendar',
      desc: '',
      args: [],
    );
  }

  /// `Streak & Motivation System`
  String get streakMotivationSystem {
    return Intl.message(
      'Streak & Motivation System',
      name: 'streakMotivationSystem',
      desc: '',
      args: [],
    );
  }

  /// `Stay engaged and inspired by tracking your streaks and setting gentle reminders.`
  String get stayEngagedAndInspiredByTrackingYourStreaksAndSetting {
    return Intl.message(
      'Stay engaged and inspired by tracking your streaks and setting gentle reminders.',
      name: 'stayEngagedAndInspiredByTrackingYourStreaksAndSetting',
      desc: '',
      args: [],
    );
  }

  /// `Multilingual Support`
  String get multilingualSupport {
    return Intl.message(
      'Multilingual Support',
      name: 'multilingualSupport',
      desc: '',
      args: [],
    );
  }

  /// `Available in Kazakh, Russian, and English — because growth has no language barrier.`
  String get availableInKazakhRussianAndEnglishBecauseGrowthHasNo {
    return Intl.message(
      'Available in Kazakh, Russian, and English — because growth has no language barrier.',
      name: 'availableInKazakhRussianAndEnglishBecauseGrowthHasNo',
      desc: '',
      args: [],
    );
  }

  /// `Built for dreamers, doers, and disciplined minds.\nStart your Ádet journey today.`
  String get builtForDreamersDoersAndDisciplinedMindsnstartYourDetJourney {
    return Intl.message(
      'Built for dreamers, doers, and disciplined minds.\\nStart your Ádet journey today.',
      name: 'builtForDreamersDoersAndDisciplinedMindsnstartYourDetJourney',
      desc: '',
      args: [],
    );
  }

  /// `Support request from Ádet`
  String get supportRequestFromDet {
    return Intl.message(
      'Support request from Ádet',
      name: 'supportRequestFromDet',
      desc: '',
      args: [],
    );
  }

  /// `Hello Ádet team,\n\nI need help with...`
  String get helloDetTeamnniNeedHelpWith {
    return Intl.message(
      'Hello Ádet team,\\n\\nI need help with...',
      name: 'helloDetTeamnniNeedHelpWith',
      desc: '',
      args: [],
    );
  }

  /// `Could not launch email client.`
  String get couldNotLaunchEmailClient {
    return Intl.message(
      'Could not launch email client.',
      name: 'couldNotLaunchEmailClient',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get support {
    return Intl.message('Support', name: 'support', desc: '', args: []);
  }

  /// `Need help or have feedback?`
  String get needHelpOrHaveFeedback {
    return Intl.message(
      'Need help or have feedback?',
      name: 'needHelpOrHaveFeedback',
      desc: '',
      args: [],
    );
  }

  /// `We’re here to help you stay on track with your habits.`
  String get wereHereToHelpYouStayOnTrackWithYour {
    return Intl.message(
      'We’re here to help you stay on track with your habits.',
      name: 'wereHereToHelpYouStayOnTrackWithYour',
      desc: '',
      args: [],
    );
  }

  /// `📧 Contact us:`
  String get contactUs {
    return Intl.message(
      '📧 Contact us:',
      name: 'contactUs',
      desc: '',
      args: [],
    );
  }

  /// `❓ Frequently Asked Questions`
  String get frequentlyAskedQuestions {
    return Intl.message(
      '❓ Frequently Asked Questions',
      name: 'frequentlyAskedQuestions',
      desc: '',
      args: [],
    );
  }

  /// `How do I create a habit?`
  String get howDoICreateAHabit {
    return Intl.message(
      'How do I create a habit?',
      name: 'howDoICreateAHabit',
      desc: '',
      args: [],
    );
  }

  /// `Go to the my plans page and tap "+" to add a habit.`
  String get goToTheMyPlansPageAndTapToAdd {
    return Intl.message(
      'Go to the my plans page and tap "+" to add a habit.',
      name: 'goToTheMyPlansPageAndTapToAdd',
      desc: '',
      args: [],
    );
  }

  /// `Yes! You can add as many habits as you want.`
  String get yesYouCanAddAsManyHabitsAsYouWant {
    return Intl.message(
      'Yes! You can add as many habits as you want.',
      name: 'yesYouCanAddAsManyHabitsAsYouWant',
      desc: '',
      args: [],
    );
  }

  /// `Yes, you can enable notifications in settings.`
  String get yesYouCanEnableNotificationsInSettings {
    return Intl.message(
      'Yes, you can enable notifications in settings.',
      name: 'yesYouCanEnableNotificationsInSettings',
      desc: '',
      args: [],
    );
  }

  /// `Send Feedback`
  String get sendFeedback {
    return Intl.message(
      'Send Feedback',
      name: 'sendFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Can I track multiple habits?`
  String get canITrackMultipleHabits {
    return Intl.message(
      'Can I track multiple habits?',
      name: 'canITrackMultipleHabits',
      desc: '',
      args: [],
    );
  }

  /// `Does Ádet send reminders?`
  String get doesDetSendReminders {
    return Intl.message(
      'Does Ádet send reminders?',
      name: 'doesDetSendReminders',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'kk'),
      Locale.fromSubtags(languageCode: 'ru'),
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
