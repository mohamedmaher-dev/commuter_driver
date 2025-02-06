part of '../add_commute_view.dart';

class _GeneralView extends StatelessWidget {
  const _GeneralView({super.key});

  @override
  Widget build(BuildContext context) {
    final addCommuteBloc = BlocProvider.of<AddCommuteBloc>(context);
    final Language language = Language.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          language.general,
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
                  decoration: InputDecoration(hintText: language.commute_name),
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
