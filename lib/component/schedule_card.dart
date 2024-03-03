import 'package:calendar_scheduler/const/colors.dart';
import 'package:flutter/cupertino.dart';

class _Time extends StatelessWidget {
  final int startTime;
  final int endTime;

  const _Time({required this.startTime, required this.endTime, super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        fontWeight: FontWeight.w600, color: PRIMARY_COLOR, fontSize: 16);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${startTime.toString().padLeft(2, '0')}:00',
          style: textStyle,
        ),
        Text(
          '${endTime.toString().padLeft(2, '0')}:00',
          style: textStyle.copyWith(fontSize: 10),
        )
      ],
    );
  }
}

class _Content extends StatelessWidget {
  final String content;

  const _Content({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(content),
    );
  }
}

class ScheduleCard extends StatelessWidget {
  final int startTime;
  final int endTime;
  final String content;

  const ScheduleCard(
      {super.key,
      required this.startTime,
      required this.endTime,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: PRIMARY_COLOR,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Time(
                startTime: startTime,
                endTime: endTime,
              ),
              SizedBox(width: 5,),
              _Content(
                content : content
              ),
              SizedBox(width: 16,)
            ],
          ),
        ),
      ),
    );
  }
}
