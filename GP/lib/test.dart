void main() {
  // Example usage:
  DateTime startDate = DateTime(2023, 12, 10); // Replace with your actual start date
  DateTime endDate = DateTime(2024, 1, 3); // Replace with your actual end date

  int daysDifference = calculateDaysDifference(startDate, endDate);

  print('The difference is $daysDifference days.');
}

int calculateDaysDifference(DateTime startDate, DateTime endDate) {
  // Calculate the difference in days
  int days = endDate.difference(startDate).inDays;

  return days;
}