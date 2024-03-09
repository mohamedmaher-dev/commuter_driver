part of '../profile_view.dart';

class _AccountBody extends StatelessWidget {
  final String? imgUrl;
  final String email;
  final String name;
  final String phone;
  final int rate;

  const _AccountBody({
    required this.imgUrl,
    required this.email,
    required this.name,
    required this.phone,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    final profileBloc = BlocProvider.of<ProfileBloc>(context);
    return BlocBuilder<AppThemeBloc, AppThemeState>(
      builder: (context, state) {
        return Card(
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              children: [
                badges.Badge(
                  badgeAnimation: const badges.BadgeAnimation.scale(),
                  badgeStyle: badges.BadgeStyle(
                    badgeColor: ColorManger.transparent,
                  ),
                  badgeContent: IconButton.filledTonal(
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      showModalBottomSheet(
                        showDragHandle: true,
                        context: context,
                        builder: (contextDialog) => _PickImageSheet(
                          profileBloc: profileBloc,
                        ),
                      );
                    },
                  ),
                  position: badges.BadgePosition.bottomStart(),
                  child: CircleAvatar(
                    maxRadius: MediaQuery.of(context).size.width / 6,
                    minRadius: MediaQuery.of(context).size.width / 6,
                    child: BlocBuilder<ProfileBloc, ProfileState>(
                      builder: (context, state) {
                        return Hero(
                          tag: 'TAG-1',
                          child: profileBloc.imageFile != null
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(100.r),
                                  child: Image.file(
                                    File(profileBloc.imageFile!.path),
                                    fit: BoxFit.cover,
                                    height:
                                        MediaQuery.of(context).size.width / 3,
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                  ),
                                )
                              : imgUrl == null
                                  ? Text(
                                      name.characters.first.toUpperCase(),
                                      style: TextStyle(fontSize: 50.sp),
                                    )
                                  : ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(100.r),
                                      child: CachedNetworkImage(
                                        fit: BoxFit.cover,
                                        height:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        imageUrl: imgUrl!,
                                        errorWidget: (context, url, error) =>
                                            const Icon(
                                          Icons.error,
                                        ),
                                      ),
                                    ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                RatingBar(
                  textDirection: TextDirection.ltr,
                  initialRating: rate.toDouble(),
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  ratingWidget: RatingWidget(
                    full: const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    half: const Directionality(
                      textDirection: TextDirection.ltr,
                      child: Icon(
                        Icons.star_half,
                        color: Colors.amber,
                      ),
                    ),
                    empty: const Icon(
                      Icons.star_border,
                      color: Colors.amber,
                    ),
                  ),
                  onRatingUpdate: (double value) {},
                ),
                ListTile(
                  title: Text(
                    email,
                    maxLines: 1,
                    style: TextStyles.tsP12B,
                  ),
                  subtitle: Text(language.Mail),
                  leading: const Icon(Icons.person),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    name,
                    style: TextStyles.tsP12B,
                    maxLines: 1,
                  ),
                  subtitle: Text(language.Name),
                  leading: const Icon(Icons.person),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    phone,
                    style: TextStyles.tsP12B,
                    maxLines: 1,
                  ),
                  subtitle: Text(language.Phone),
                  leading: const Icon(Icons.phone),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
