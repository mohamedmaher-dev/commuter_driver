import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/themes/app_theme_controller.dart';
import '../../controllers/slide_panel_bloc/slide_panel_bloc.dart';

class IconHeader extends StatelessWidget {
  const IconHeader({super.key, required this.isOpen});
  final bool isOpen;
  @override
  Widget build(BuildContext context) {
    final slidePanelBloc = BlocProvider.of<SlidePanelBloc>(context);
    return Row(
      children: [
        Expanded(
          child: IconButton(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25.r),
                  ),
                ),
              ),
            ),
            onPressed: () {
              slidePanelBloc.add(SlidePanelEvent.iconHeaderClick(isOpen));
            },
            icon: Icon(
              size: 25.r,
              color: ColorManger.primary,
              isOpen
                  ? Icons.keyboard_arrow_down_rounded
                  : Icons.keyboard_arrow_up_rounded,
            ),
          ),
        ),
      ],
    );
  }
}
