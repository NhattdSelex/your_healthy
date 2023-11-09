import 'package:flutter/material.dart';
import 'package:your_healthy/presentation/ui/widgets/app_button.dart';
import 'package:your_healthy/utils/extensions/date_range_extentions.dart';

class DateRangeWidget extends StatelessWidget {
  const DateRangeWidget(
      {super.key, this.dateTimeRangeInit, this.dateTimeFiltered});

  final DateTimeRange? dateTimeRangeInit;
  final void Function(DateTimeRange?)? dateTimeFiltered;

  @override
  Widget build(BuildContext context) {
    final String convertTimeRange = dateTimeRangeInit != null
        ? dateTimeRangeInit!.displayString
        : 'Chọn ngày';

    return AppButtonRounded(
      child: Text(convertTimeRange),
      onTap: () async {
        final dateRange = await showDateRangePicker(
          context: context,
          firstDate: DateTime(2020),
          lastDate: DateTime.now(),
        );
        if (dateTimeFiltered != null) {
          dateTimeFiltered!(dateRange);
        }
      },
    );
  }
}
