
class Holiday {
  String name;
  int day;
  String month;

  Holiday(this.name, this.day, this.month);

  static bool inSameMonth(Holiday h1, Holiday h2) {
    return h1.month == h2.month;
  }

  static double avgDate(List<Holiday> holidays) {
    int sum = 0;

    for (int i = 0; i < holidays.length; i++) {
      sum += holidays[i].day;
    }

    return sum / holidays.length;
  }
}

