part of '../profile_view.dart';

class _WorkspaceBody extends StatelessWidget {
  const _WorkspaceBody();

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);

    return BlocBuilder<AppThemeBloc, AppThemeState>(
      builder: (context, state) {
        return Card(
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              children: [
                ListTile(
                  title: const Text('السيارة'),
                  leading: const Icon(CupertinoIcons.car_detailed),
                  trailing: IconButton.outlined(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_drop_down_rounded,
                    ),
                  ),
                ),
                // ListTile(
                //   title: Text(language.Color),
                //   leading: const Icon(Icons.color_lens),
                //   trailing: CircleAvatar(
                //     backgroundColor: ColorManger.white,
                //   ),
                // ),
                ListTile(
                  title: Text(language.Females_Only),
                  leading: const Icon(Icons.female_rounded),
                  trailing: Switch(
                    value: false,
                    onChanged: (newValue) {},
                  ),
                ),
                ListTile(
                  title: const Text('مشاركة الرحلة'),
                  leading: const Icon(Icons.info_outline),
                  trailing: Switch(
                    value: false,
                    onChanged: (newValue) {},
                  ),
                ),
                // ListTile(
                //   title: Text(language.Car_No_Of_Seats),
                //   leading: const Icon(Icons.chair_alt_rounded),
                //   trailing: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     children: [
                //       IconButton(
                //         onPressed: () {},
                //         icon: const Icon(
                //           CupertinoIcons.plus,
                //         ),
                //       ),
                //       Text(
                //         '5',
                //         style: TextStyles.tsP20B,
                //       ),
                //       IconButton(
                //         onPressed: () {},
                //         icon: const Icon(
                //           CupertinoIcons.minus,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
