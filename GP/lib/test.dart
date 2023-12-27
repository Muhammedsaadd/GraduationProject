// void main() {
//   // Example usage
//   DateTime startDate = DateTime(2023, 1, 1);
//   DateTime endDate = DateTime(2024, 12, 31);
//   DateTime currentDate = DateTime.now();
//
//   double percentage = calculatePercentage(startDate, endDate, currentDate);
//
//   print("Percentage of time elapsed: ${percentage.toStringAsFixed(2)}%");
// }
//



void main() {
  try {
    // Example usage
    DateTime currentDate = DateTime.now();
    DateTime targetDate = DateTime(2024, 1, 1, 12, 0, 0); // Target date: January 1, 2023, 12:00 PM

    Duration difference = calculateTimeDifference(currentDate, targetDate);

    print("Time difference: ${difference.inHours} hours, ${difference.inMinutes % 60} minutes, ${difference.inSeconds % 60} seconds");
  } catch (e) {
    print("Error: $e");
  }
}

Duration calculateTimeDifference(DateTime currentTime, DateTime targetTime) {
  // Calculate the difference between two DateTime objects
  Duration timeDifference = targetTime.difference(currentTime);

  return timeDifference;
}