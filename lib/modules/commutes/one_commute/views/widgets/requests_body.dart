import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_driver/modules/commutes/one_commute/controllers/tabs/one_commute_tab_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/localization/generated/l10n.dart';
import '../../../../../core/routes/app_route.dart';
import '../../../../../core/themes/app_theme_controller.dart';
import '../../../../../core/widgets/app_snack_bar.dart';
import '../../../../../core/widgets/empty_view.dart';
import '../../../../../core/widgets/loading_view.dart';
import '../../../../../core/widgets/pop_loading.dart';
import '../../../../../core/widgets/profile_avatar.dart';
import '../../../../../core/widgets/profile_rating_bar.dart';
import '../../../../chat/one_chat/data/models/chat_room_args_model.dart';
import '../../../my_commutes/data/models/get_commutes_response_model.dart';
import '../../controllers/action_requests/action_requests_cubit.dart';
import '../../controllers/requests/requests_cubit.dart';
import '../../data/models/get_requests_response_model.dart';

class OneCommuteRequetsBody extends StatelessWidget {
  const OneCommuteRequetsBody({super.key, required this.commuteModel});
  final CommuteModel commuteModel;

  @override
  Widget build(BuildContext context) {
    final tabs = BlocProvider.of<OneCommuteTabCubit>(context);
    final Language language = Language.of(context);

    return Expanded(
      child: BlocBuilder<RequestsCubit, RequestsState>(
        builder: (context, state) {
          return state.when(
            loading: () => const LoadingView(),
            success: (id, onlineRequests, upcomingRequests, offlineRequests) =>
                Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const RequestsTabs(),
                  if (tabs.currentRequestTab == RequestTabs.online)
                    Expanded(
                      child: ListView.builder(
                        itemCount: onlineRequests.length,
                        itemBuilder: (context, index) => RequestItemView(
                          item: onlineRequests[index],
                        ),
                      ),
                    ),
                  if (tabs.currentRequestTab == RequestTabs.upcoming)
                    Expanded(
                      child: ListView.builder(
                        itemCount: upcomingRequests.length,
                        itemBuilder: (context, index) => RequestItemView(
                          item: upcomingRequests[index],
                        ),
                      ),
                    ),
                  if (tabs.currentRequestTab == RequestTabs.offline)
                    Expanded(
                      child: ListView.builder(
                        itemCount: offlineRequests.length,
                        itemBuilder: (context, index) => RequestItemView(
                          item: offlineRequests[index],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            failure: () => Column(
              children: [
                const RequestsTabs(),
                Expanded(
                  child: EmptyView(
                    icon: Icons.compare_arrows_rounded,
                    text: language.no_requests_found,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class RequestsTabs extends StatelessWidget {
  const RequestsTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OneCommuteTabCubit>(context);
    final Language language = Language.of(context);

    return Align(
      child: Padding(
        padding: EdgeInsets.only(top: 5.0.w),
        child: BlocBuilder<OneCommuteTabCubit, OneCommuteTabState>(
          builder: (context, state) {
            return CupertinoSlidingSegmentedControl(
              thumbColor: ColorManger.primaryContainer,
              children: {
                RequestTabs.online: Text(language.online),
                RequestTabs.upcoming: Text(language.upcoming),
                RequestTabs.offline: Text(language.offline),
              },
              groupValue: cubit.currentRequestTab,
              onValueChanged: (value) {
                cubit.changeRequestTab(value as RequestTabs);
              },
            );
          },
        ),
      ),
    );
  }
}

class RequestItemView extends StatelessWidget {
  const RequestItemView({super.key, required this.item});
  final RequestsResponseModelItem item;

  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);

    final bloc = BlocProvider.of<ActionRequestsCubit>(context);
    final requestsCubit = BlocProvider.of<RequestsCubit>(context);
    return BlocListener<ActionRequestsCubit, ActionRequestsState>(
      listener: (context, state) {
        PopLoading.dismiss();
        state.whenOrNull(
          loading: () => PopLoading.show(),
          failure: () {
            AppSnackBar.show(
              title: language.failure,
              msg: language.failure_to_accept_request,
              type: ContentType.failure,
              context: context,
            );
            requestsCubit.getRequests(item.commuterId);
          },
          success: () {
            AppSnackBar.show(
              title: language.success,
              msg: language.request_accepted_successfully,
              type: ContentType.success,
              context: context,
            );
            requestsCubit.getRequests(item.commuterId);
          },
        );
      },
      child: Column(
        children: [
          Card(
            child: ExpansionTile(
              initiallyExpanded: true,
              leading: ProfileAvatar(
                name: item.userData.name,
                imageUrl: item.userData.image,
                radius: 100.r,
              ),
              title: Text(item.userData.name),
              subtitle: ProfileRatingBar(
                rating: item.userData.ratingsQuantity ?? 0,
                itemSize: 20,
              ),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton.icon(
                      label: Text(language.accept),
                      onPressed: () {
                        bloc.acceptRequest(item.requestId);
                      },
                      icon: const Icon(
                        Icons.done,
                        color: Colors.green,
                      ),
                    ),
                    TextButton.icon(
                      label: Text(language.reject),
                      onPressed: () {
                        bloc.rejectRequest(item.requestId);
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    ),
                    TextButton.icon(
                      label: Text(language.chats),
                      onPressed: () {
                        AppRouter.push(
                          context: context,
                          page: Pages.oneChat,
                          arguments: ChatRoomArgsModel(
                            friendId: item.userId,
                            friendName: item.userData.name,
                            friendImageUrl: null,
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.chat,
                        color: ColorManger.primary,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
