import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ssen_user/utils/constants/size.dart';
import 'package:ssen_user/utils/constants/text_string.dart';

import '../utils/helper_function.dart';

class OtpVerfication extends StatelessWidget {
  const OtpVerfication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Otp(),
    );
  }
}

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunction.isDarkMode(context);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SSizes.defaultSpace, vertical: SSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              SText.verificationCode,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: SSizes.spaceBtwItems,
            ),
            Text(
              SText.verificationCodeDescription,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '${SText.verificationCodePhone}',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: ' ${SText.changePhoneNumber}  ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? Colors.white : Colors.blue,
                          decorationColor: dark ? Colors.white : Colors.blue)),
                ],
              ),
            ),
            const SizedBox(
              height: SSizes.spaceBtwSections * 4,
            ),
            Form(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 48,
                  width: 44,
                  child: TextField(
                    style: Theme.of(context).textTheme.headlineSmall,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                SizedBox(
                  height: 48,
                  width: 44,
                  child: TextField(
                    style: Theme.of(context).textTheme.headlineSmall,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                SizedBox(
                  height: 48,
                  width: 44,
                  child: TextField(
                    style: Theme.of(context).textTheme.headlineSmall,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                SizedBox(
                  height: 48,
                  width: 44,
                  child: TextField(
                    style: Theme.of(context).textTheme.headlineSmall,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                SizedBox(
                  height: 48,
                  width: 44,
                  child: TextField(
                    style: Theme.of(context).textTheme.headlineSmall,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                SizedBox(
                  height: 48,
                  width: 44,
                  child: TextField(
                    style: Theme.of(context).textTheme.headlineSmall,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
