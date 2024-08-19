import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiffy/jiffy.dart';

import '../../../../core/themes/color_manger.dart';
import '../../../../core/themes/text_styles.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Card(
                  color: ColorManger.primary,
                  child: Container(
                    alignment: Alignment.center,
                    height: 75.h,
                    child: ListTile(
                      title: Text(
                        '465 SAR',
                        textAlign: TextAlign.center,
                        style: TextStyles.tsP25B.copyWith(
                          color: ColorManger.primaryContainer,
                        ),
                      ),
                      subtitle: Text(
                        'Current Balance',
                        textAlign: TextAlign.center,
                        style: TextStyles.tsP10B.copyWith(
                          color: ColorManger.primaryContainer,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: ColorManger.colorScheme.errorContainer,
                  child: Container(
                    alignment: Alignment.center,
                    height: 75.h,
                    child: ListTile(
                      title: Text(
                        '250 SAR',
                        textAlign: TextAlign.center,
                        style: TextStyles.ts25B.copyWith(),
                      ),
                      subtitle: Text(
                        'Balance Used',
                        textAlign: TextAlign.center,
                        style: TextStyles.tsP10B.copyWith(
                          color: ColorManger.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.w),
                child: FilledButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                    foregroundColor: WidgetStatePropertyAll(Colors.green),
                    side: WidgetStatePropertyAll(
                      BorderSide(width: 2, color: Colors.green),
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      showDragHandle: true,
                      context: context,
                      builder: (context) => ListView(
                        shrinkWrap: true,
                        children: [
                          CreditCardWidget(
                            cardBgColor: ColorManger.primaryContainer,
                            textStyle: TextStyles.tsP15B.copyWith(
                              color: ColorManger.primary,
                            ),
                            obscureCardCvv: false,
                            obscureCardNumber: false,
                            isHolderNameVisible: true,
                            cardNumber: '4574 5678 9012 3456',
                            expiryDate: '04/24',
                            cardHolderName: 'John Doe',
                            cvvCode: '123',
                            showBackView:
                                false, //true when you want to show cvv(back) view
                            onCreditCardWidgetChange: (
                              CreditCardBrand brand,
                            ) {}, // Callback for anytime credit card brand is changed
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.w),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Enter Amount',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(
                                    10.r,
                                  ),
                                ),
                                filled: true,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.w),
                            child: FilledButton(
                              onPressed: () {},
                              child: const Text('Charge'),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Charge Balance'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.w),
                child: FilledButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.green),
                    foregroundColor: WidgetStatePropertyAll(Colors.black),
                    side: WidgetStatePropertyAll(
                      BorderSide(width: 2, color: Colors.green),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_downward_rounded),
                  label: const Text('Withdraw'),
                ),
              ),
            ),
          ],
        ),
        const ListTile(
          title: Text('Transaction History'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: ExpansionTile(
              leading: const Icon(Icons.arrow_drop_down_rounded),
              title: const Text('Commute 1 - 458'),
              subtitle: Text(
                Jiffy.now().add(minutes: 15).toNow().toString(),
              ),
              trailing: Text(
                '- 250 SAR',
                style: TextStyles.tsP12B.copyWith(
                  color: ColorManger.colorScheme.error,
                ),
              ),
              children: const [],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: ExpansionTile(
              leading: const Icon(Icons.arrow_drop_down_rounded),
              title: const Text('Add To Balance'),
              subtitle: Text(
                Jiffy.now().add(minutes: 26).toNow().toString(),
              ),
              trailing: Text(
                '+ 150 SAR',
                style: TextStyles.tsP12B,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
