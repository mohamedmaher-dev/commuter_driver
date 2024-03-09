part of '../add_commute_view.dart';

class _GeneralView extends StatelessWidget {
  const _GeneralView({super.key});

  @override
  Widget build(BuildContext context) {
    final addCommuteBloc = BlocProvider.of<AddCommuteBloc>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'اساسي',
          style: TextStyles.tsP15B,
          textAlign: TextAlign.start,
        ),
        SizedBox(height: 5.h),
        Card(
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              children: [
                TextFormField(
                  controller: addCommuteBloc.commuteName,
                  decoration: const InputDecoration(hintText: 'اسم التنقل'),
                ),
                SizedBox(height: 10.h),
                BlocBuilder<AddCommuteBloc, AddCommuteState>(
                  builder: (context, state) {
                    return SegmentedWeek(
                      days: addCommuteBloc.days,
                      onSelectionChanged: (days) {
                        addCommuteBloc.add(AddCommuteEvent.changeDays(days));
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
