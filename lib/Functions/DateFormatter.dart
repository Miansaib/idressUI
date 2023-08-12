import 'package:intl/intl.dart';

  String formatDate(DateTime date) {
    DateTime today = DateTime.now();
    
    if (date.year == today.year && date.month == today.month && date.day == today.day) {
      // If the date is today, format it as "Today-<Day of the week> <Month> <Day> <Year>"
      String dayOfWeek = DateFormat('E').format(date);
      String month = DateFormat('MMM').format(date);
      String day = DateFormat('d').format(date);
      String year = DateFormat('y').format(date);

      return 'Today-$dayOfWeek $month $day $year';
    } else {
      // If the date is not today, format it as "<Day of the week> <Month> <Day> <Year>"
      return DateFormat('E MMM d y').format(date);
    }
  }
