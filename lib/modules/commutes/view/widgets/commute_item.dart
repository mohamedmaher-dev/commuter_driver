// ignore_for_file: unused_element

part of '../commutes_view.dart';

class _CommuteItem extends StatelessWidget {
  final int index;
  final String title;
  final String startLocation;
  final String endLocation;
  final bool isRoundTrip;
  final Set<String> days;

  const _CommuteItem({
    super.key,
    required this.index,
    required this.title,
    required this.startLocation,
    required this.endLocation,
    required this.isRoundTrip,
    required this.days,
  });

  @override
  Widget build(BuildContext context) {
    final commutesBloc = BlocProvider.of<CommutesBloc>(context);
    return Card(
      child: Container(
        padding: EdgeInsets.all(10.w),
        child: Column(
          children: [
            Row(
              children: [
                IconButton.filled(
                  onPressed: null,
                  icon: Text((index + 1).toString()),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyles.tsP15B,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5.w),
                  decoration: BoxDecoration(
                    color: ColorManger.primary,
                    borderRadius: BorderRadius.circular(
                      10.r,
                    ),
                  ),
                  child: Icon(
                    color: ColorManger.black,
                    index == 1
                        ? Icons.swap_horiz_rounded
                        : Icons.arrow_forward_rounded,
                  ),
                ),
                PopupMenuButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Center(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            AppRouter.push(
                                context: context, page: Pages.addCommute);
                          },
                          icon: const Icon(Icons.edit),
                          label: const Text('Edit'),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: Center(
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                            foregroundColor: MaterialStatePropertyAll(
                              ColorManger.red,
                            ),
                          ),
                          onPressed: () {
                            AppRouter.pop(context: context);
                            commutesBloc.add(
                              CommutesEvent.deleteCommute(
                                commuteId: commutesBloc.commutes[index].id,
                              ),
                            );
                          },
                          icon: const Icon(Icons.delete),
                          label: const Text('Delete'),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Divider(height: 25.h),
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5.w),
                  margin: EdgeInsets.all(5.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: ColorManger.textFormbBackground,
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    startLocation,
                    style: TextStyles.ts10B,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5.w),
                  padding: EdgeInsets.all(5.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: ColorManger.textFormbBackground,
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    endLocation,
                    style: TextStyles.ts10B,
                  ),
                )
              ],
            ),
            SizedBox(height: 10.h),
            SegmentedWeek(
              days: days,
              onSelectionChanged: (p0) {},
            )
          ],
        ),
      ),
    );
  }
}
