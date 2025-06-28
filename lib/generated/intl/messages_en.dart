// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(author) => "Author: ${author}";

  static String m1(doneHabits, max, dayText) =>
      "Great job! You completed ${doneHabits} out of ${max} habits ${dayText}. 😊";

  static String m2(takesTime) => "${takesTime} minutes";

  static String m3(name) => "Welcome, ${name}";

  static String m4(day, month) => "Your plan of ${day} ${month}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutApp": MessageLookupByLibrary.simpleMessage("About app"),
    "addANewRoutine": MessageLookupByLibrary.simpleMessage("Add a new routine"),
    "addMoreDetailsToClarifyYourHabit": MessageLookupByLibrary.simpleMessage(
      "Add more details to clarify your habit",
    ),
    "addToPlan": MessageLookupByLibrary.simpleMessage("Add To Plan"),
    "april": MessageLookupByLibrary.simpleMessage("April"),
    "august": MessageLookupByLibrary.simpleMessage("August"),
    "author": m0,
    "browse": MessageLookupByLibrary.simpleMessage("Browse"),
    "browseHabits": MessageLookupByLibrary.simpleMessage("Browse habits"),
    "browseRountines": MessageLookupByLibrary.simpleMessage("Browse rountines"),
    "catalog": MessageLookupByLibrary.simpleMessage("Catalog"),
    "category": MessageLookupByLibrary.simpleMessage("Category"),
    "create": MessageLookupByLibrary.simpleMessage("Create"),
    "createOwn": MessageLookupByLibrary.simpleMessage("Create Own"),
    "createYourOwnHabit": MessageLookupByLibrary.simpleMessage(
      "Create your own habit",
    ),
    "dailyMotivation": MessageLookupByLibrary.simpleMessage("Daily motivation"),
    "days": MessageLookupByLibrary.simpleMessage("Days:"),
    "daysThatYouWantToDo": MessageLookupByLibrary.simpleMessage(
      "Days that you want to do",
    ),
    "december": MessageLookupByLibrary.simpleMessage("December"),
    "description": MessageLookupByLibrary.simpleMessage("Description"),
    "details": MessageLookupByLibrary.simpleMessage("Details"),
    "estimatedTimeminute": MessageLookupByLibrary.simpleMessage(
      "Estimated time(minute)",
    ),
    "february": MessageLookupByLibrary.simpleMessage("February"),
    "friday": MessageLookupByLibrary.simpleMessage("Friday"),
    "greatJobYouCompletedStatenumberofdonehabitsOutOfStatehabitinfolengthHabitsStatetextofdaytolowercase":
        m1,
    "habitIsAlreadyInYourPlanGoodJob": MessageLookupByLibrary.simpleMessage(
      "Habit is already in your plan. Good job! ",
    ),
    "habits": MessageLookupByLibrary.simpleMessage("Habits"),
    "helpSupport": MessageLookupByLibrary.simpleMessage("Help & Support"),
    "home": MessageLookupByLibrary.simpleMessage("Home"),
    "january": MessageLookupByLibrary.simpleMessage("January"),
    "july": MessageLookupByLibrary.simpleMessage("July"),
    "june": MessageLookupByLibrary.simpleMessage("June"),
    "language": MessageLookupByLibrary.simpleMessage("Language"),
    "march": MessageLookupByLibrary.simpleMessage("March"),
    "may": MessageLookupByLibrary.simpleMessage("May"),
    "monday": MessageLookupByLibrary.simpleMessage("Monday"),
    "morePlan": MessageLookupByLibrary.simpleMessage("More plan"),
    "myPlan": MessageLookupByLibrary.simpleMessage("My plan"),
    "no": MessageLookupByLibrary.simpleMessage("No"),
    "noHabitsFound": MessageLookupByLibrary.simpleMessage("No habits found."),
    "notFound": MessageLookupByLibrary.simpleMessage("Not Found"),
    "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
    "november": MessageLookupByLibrary.simpleMessage("November"),
    "october": MessageLookupByLibrary.simpleMessage("October"),
    "recomendations": MessageLookupByLibrary.simpleMessage("Recomendations"),
    "saturday": MessageLookupByLibrary.simpleMessage("Saturday"),
    "search": MessageLookupByLibrary.simpleMessage("Search"),
    "searchResults": MessageLookupByLibrary.simpleMessage("Search Results"),
    "september": MessageLookupByLibrary.simpleMessage("September"),
    "settings": MessageLookupByLibrary.simpleMessage("Settings"),
    "sunday": MessageLookupByLibrary.simpleMessage("Sunday"),
    "takesMinutes": MessageLookupByLibrary.simpleMessage("Takes minutes:"),
    "takestimeMinutes": m2,
    "thursday": MessageLookupByLibrary.simpleMessage("Thursday"),
    "tipDescription": MessageLookupByLibrary.simpleMessage("Tip description"),
    "tipToHabit": MessageLookupByLibrary.simpleMessage("Tip to habit"),
    "tips": MessageLookupByLibrary.simpleMessage("Tips:"),
    "title": MessageLookupByLibrary.simpleMessage("Title"),
    "tuesday": MessageLookupByLibrary.simpleMessage("Tuesday"),
    "wednesday": MessageLookupByLibrary.simpleMessage("Wednesday"),
    "welcome": m3,
    "why": MessageLookupByLibrary.simpleMessage("Why:"),
    "yes": MessageLookupByLibrary.simpleMessage("Yes"),
    "youDontHaveAnyPlansOnThisDayntapToAdd":
        MessageLookupByLibrary.simpleMessage(
          "You don\'t have any plans on this day.\\nTap + to add a new habit!",
        ),
    "yourActivityCalendar": MessageLookupByLibrary.simpleMessage(
      "Your activity calendar",
    ),
    "yourPlanOfDayMonth": m4,
    "yourTodaysPlan": MessageLookupByLibrary.simpleMessage(
      "Your today\'s plan",
    ),
    "yourTomorrowPlan": MessageLookupByLibrary.simpleMessage(
      "Your tomorrow plan",
    ),
    "yourYesterdayPlan": MessageLookupByLibrary.simpleMessage(
      "Your yesterday plan",
    ),
  };
}
