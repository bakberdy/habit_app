// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(author) => "Автор: ${author}";

  static String m1(doneHabits, max, dayText) =>
      "Отлично! Вы выполнили ${doneHabits} из ${max} привычек ${dayText}. 😊";

  static String m2(takesTime) => "${takesTime} минут";

  static String m3(name) => "Добро пожаловать, ${name}";

  static String m4(day, month) => "Ваш план на ${day} ${month}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutApp": MessageLookupByLibrary.simpleMessage("О приложении"),
    "addANewRoutine": MessageLookupByLibrary.simpleMessage(
      "Добавить новую рутину",
    ),
    "addMoreDetailsToClarifyYourHabit": MessageLookupByLibrary.simpleMessage(
      "Добавьте больше деталей для ясности привычки",
    ),
    "addToPlan": MessageLookupByLibrary.simpleMessage("Добавить в план"),
    "april": MessageLookupByLibrary.simpleMessage("Апрель"),
    "august": MessageLookupByLibrary.simpleMessage("Август"),
    "author": m0,
    "browse": MessageLookupByLibrary.simpleMessage("Просмотр"),
    "browseHabits": MessageLookupByLibrary.simpleMessage("Просмотр привычек"),
    "browseRountines": MessageLookupByLibrary.simpleMessage("Просмотр рутин"),
    "catalog": MessageLookupByLibrary.simpleMessage("Каталог"),
    "category": MessageLookupByLibrary.simpleMessage("Категория"),
    "chooseAHabitFromReadymadeSamplesnorCreateYourOwnPersonal":
        MessageLookupByLibrary.simpleMessage(
          "Выберите привычку из готовых примеров\nили создайте свою собственную, подходящую под ваши цели.",
        ),
    "chooseALanguage": MessageLookupByLibrary.simpleMessage("Выберите язык"),
    "create": MessageLookupByLibrary.simpleMessage("Создать"),
    "createAHabit": MessageLookupByLibrary.simpleMessage("Создать привычку"),
    "createOwn": MessageLookupByLibrary.simpleMessage("Создать свою"),
    "createYourOwnHabit": MessageLookupByLibrary.simpleMessage(
      "Создайте свою привычку",
    ),
    "dailyMotivation": MessageLookupByLibrary.simpleMessage(
      "Ежедневная мотивация",
    ),
    "days": MessageLookupByLibrary.simpleMessage("Дни:"),
    "daysThatYouWantToDo": MessageLookupByLibrary.simpleMessage(
      "Дни, в которые вы хотите выполнять",
    ),
    "december": MessageLookupByLibrary.simpleMessage("Декабрь"),
    "description": MessageLookupByLibrary.simpleMessage("Описание"),
    "details": MessageLookupByLibrary.simpleMessage("Детали"),
    "enterYourName": MessageLookupByLibrary.simpleMessage("Введите ваше имя"),
    "estimatedTimeminute": MessageLookupByLibrary.simpleMessage(
      "Примерное время (минуты)",
    ),
    "february": MessageLookupByLibrary.simpleMessage("Февраль"),
    "forTheLanguageChangeToTakeEffectCorrectlyPleaseReopen":
        MessageLookupByLibrary.simpleMessage(
          "Чтобы смена языка применилась корректно, пожалуйста, перезапустите приложение.",
        ),
    "friday": MessageLookupByLibrary.simpleMessage("Пятница"),
    "greatJobYouCompletedStatenumberofdonehabitsOutOfStatehabitinfolengthHabitsStatetextofdaytolowercase":
        m1,
    "habitIsAlreadyInYourPlanGoodJob": MessageLookupByLibrary.simpleMessage(
      "Привычка уже есть в вашем плане. Отличная работа!",
    ),
    "habits": MessageLookupByLibrary.simpleMessage("Привычки"),
    "helpSupport": MessageLookupByLibrary.simpleMessage("Помощь и поддержка"),
    "home": MessageLookupByLibrary.simpleMessage("Главная"),
    "january": MessageLookupByLibrary.simpleMessage("Январь"),
    "july": MessageLookupByLibrary.simpleMessage("Июль"),
    "june": MessageLookupByLibrary.simpleMessage("Июнь"),
    "language": MessageLookupByLibrary.simpleMessage("Язык"),
    "letsStart": MessageLookupByLibrary.simpleMessage("Начнем"),
    "march": MessageLookupByLibrary.simpleMessage("Март"),
    "may": MessageLookupByLibrary.simpleMessage("Май"),
    "monday": MessageLookupByLibrary.simpleMessage("Понедельник"),
    "morePlan": MessageLookupByLibrary.simpleMessage("Больше планов"),
    "myPlan": MessageLookupByLibrary.simpleMessage("Мой план"),
    "nameCannotBeEmpty": MessageLookupByLibrary.simpleMessage(
      "Имя не может быть пустым",
    ),
    "no": MessageLookupByLibrary.simpleMessage("Нет"),
    "noHabitsFound": MessageLookupByLibrary.simpleMessage(
      "Привычки не найдены.",
    ),
    "notFound": MessageLookupByLibrary.simpleMessage("Не найдено"),
    "notifications": MessageLookupByLibrary.simpleMessage("Уведомления"),
    "november": MessageLookupByLibrary.simpleMessage("Ноябрь"),
    "october": MessageLookupByLibrary.simpleMessage("Октябрь"),
    "recomendations": MessageLookupByLibrary.simpleMessage("Рекомендации"),
    "saturday": MessageLookupByLibrary.simpleMessage("Суббота"),
    "search": MessageLookupByLibrary.simpleMessage("Поиск"),
    "searchResults": MessageLookupByLibrary.simpleMessage("Результаты поиска"),
    "september": MessageLookupByLibrary.simpleMessage("Сентябрь"),
    "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
    "start": MessageLookupByLibrary.simpleMessage("Начать"),
    "stayMotivatedWithAHeatmapCalendarnandPlanYourDayWith":
        MessageLookupByLibrary.simpleMessage(
          "Оставайтесь мотивированными с помощью календаря-таймлайна\nи планируйте свой день с ясностью.",
        ),
    "sunday": MessageLookupByLibrary.simpleMessage("Воскресенье"),
    "takesMinutes": MessageLookupByLibrary.simpleMessage("Занимает минут:"),
    "takestimeMinutes": m2,
    "thursday": MessageLookupByLibrary.simpleMessage("Четверг"),
    "tipDescription": MessageLookupByLibrary.simpleMessage("Описание совета"),
    "tipToHabit": MessageLookupByLibrary.simpleMessage("Совет к привычке"),
    "tips": MessageLookupByLibrary.simpleMessage("Советы:"),
    "title": MessageLookupByLibrary.simpleMessage("Название"),
    "todaysHabitIsTheReflectionOfYourFutureLife":
        MessageLookupByLibrary.simpleMessage(
          "Привычка сегодня — отражение твоей будущей жизни.",
        ),
    "trackYourProgress": MessageLookupByLibrary.simpleMessage(
      "Отслеживайте прогресс",
    ),
    "tuesday": MessageLookupByLibrary.simpleMessage("Вторник"),
    "wednesday": MessageLookupByLibrary.simpleMessage("Среда"),
    "welcome": m3,
    "why": MessageLookupByLibrary.simpleMessage("Почему:"),
    "yes": MessageLookupByLibrary.simpleMessage("Да"),
    "youDontHaveAnyPlansOnThisDayntapToAdd": MessageLookupByLibrary.simpleMessage(
      "У вас нет планов на этот день.\nНажмите +, чтобы добавить новую привычку!",
    ),
    "yourActivityCalendar": MessageLookupByLibrary.simpleMessage(
      "Ваш календарь активности",
    ),
    "yourPlanOfDayMonth": m4,
    "yourTodaysPlan": MessageLookupByLibrary.simpleMessage(
      "Ваш план на сегодня",
    ),
    "yourTomorrowPlan": MessageLookupByLibrary.simpleMessage(
      "Ваш план на завтра",
    ),
    "yourYesterdayPlan": MessageLookupByLibrary.simpleMessage(
      "Ваш план на вчера",
    ),
  };
}
