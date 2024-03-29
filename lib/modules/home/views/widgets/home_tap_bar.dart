part of '../home_view.dart';

class _HomeTabBar extends StatelessWidget {
  const _HomeTabBar();

  @override
  Widget build(BuildContext context) {
    final homeBloc = BlocProvider.of<HomeBloc>(context);
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return badges.Badge(
          badgeContent: const Text('2'),
          child: CupertinoSlidingSegmentedControl(
            thumbColor: ColorManger.primaryContainer,
            groupValue: homeBloc.currentPage,
            onValueChanged: (value) {
              homeBloc.add(
                HomeEvent.changePage(
                  newPage: value!,
                ),
              );
            },
            children: {
              0: Text(
                'تنقلاتي',
                style: TextStyles.tsP10B,
              ),
              1: Text(
                'رحلاتي المجدولة',
                style: TextStyles.tsP10B,
              ),
              2: Text(
                'طلباتي',
                style: TextStyles.tsP10B,
              ),
            },
          ),
        );
      },
    );
  }
}
