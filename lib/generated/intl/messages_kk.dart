// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a kk locale. All the
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
  String get localeName => 'kk';

  static String m1(doneHabits, max, dayText) =>
      "Great job! You completed {state.numberOfDoneHabits} out of {state.habitInfo.length} habits {state.textOfDay.toLowerCase()}. 😊";

  static String m2(takesTime) => "\$${takesTime} minutes";

  static String m4(day, month) => "Your plan of ${day} ${month}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutApp": MessageLookupByLibrary.simpleMessage("About app"),
        "addANewRoutine":
            MessageLookupByLibrary.simpleMessage("Add a new routine"),
        "addMoreDetailsToClarifyYourHabit":
            MessageLookupByLibrary.simpleMessage(
          "Add more details to clarify your habit",
        ),
        "addToPlan": MessageLookupByLibrary.simpleMessage("Add To Plan"),
        "browse": MessageLookupByLibrary.simpleMessage("Browse"),
        "browseHabits": MessageLookupByLibrary.simpleMessage("Browse habits"),
        "browseRountines":
            MessageLookupByLibrary.simpleMessage("Browse rountines"),
        "category": MessageLookupByLibrary.simpleMessage("Category"),
        "create": MessageLookupByLibrary.simpleMessage("Create"),
        "createOwn": MessageLookupByLibrary.simpleMessage("Create Own"),
        "createYourOwnHabit": MessageLookupByLibrary.simpleMessage(
          "Create your own habit",
        ),
        "days": MessageLookupByLibrary.simpleMessage("Days:"),
        "daysThatYouWantToDo": MessageLookupByLibrary.simpleMessage(
          "Days that you want to do",
        ),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "details": MessageLookupByLibrary.simpleMessage("Details"),
        "estimatedTimeminute": MessageLookupByLibrary.simpleMessage(
          "Estimated time(minute)",
        ),
        "greatJobYouCompletedStatenumberofdonehabitsOutOfStatehabitinfolengthHabitsStatetextofdaytolowercase":
            m1,
        "habitIsAlreadyInYourPlanGoodJob": MessageLookupByLibrary.simpleMessage(
          "Habit is already in your plan. Good job! ",
        ),
        "habits": MessageLookupByLibrary.simpleMessage("Habits"),
        "helpSupport": MessageLookupByLibrary.simpleMessage("Help & Support"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "monday": MessageLookupByLibrary.simpleMessage("Monday"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noHabitsFound":
            MessageLookupByLibrary.simpleMessage("No habits found."),
        "notFound": MessageLookupByLibrary.simpleMessage("Not Found"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "searchResults": MessageLookupByLibrary.simpleMessage("Search Results"),
        "takesMinutes": MessageLookupByLibrary.simpleMessage("Takes minutes:"),
        "takestimeMinutes": m2,
        "tipDescription":
            MessageLookupByLibrary.simpleMessage("Tip description"),
        "tipToHabit": MessageLookupByLibrary.simpleMessage("Tip to habit"),
        "tips": MessageLookupByLibrary.simpleMessage("Tips:"),
        "title": MessageLookupByLibrary.simpleMessage("Title"),
        "why": MessageLookupByLibrary.simpleMessage("Why:"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "youDontHaveAnyPlansOnThisDayntapToAdd":
            MessageLookupByLibrary.simpleMessage(
          "You don\'t have any plans on this day.\\nTap + to add a new habit!",
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
