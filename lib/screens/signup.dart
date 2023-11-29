import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ssen_user/utils/constants/size.dart';
import 'package:ssen_user/utils/constants/text_string.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              Text(
                SText.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: SSizes.spaceBtwSections,
              ),
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Iconsax.user),
                                labelText: SText.firstName),
                          ),
                        ),
                        const SizedBox(
                          width: SSizes.spaceBtwInputField,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Iconsax.user),
                                labelText: SText.lastName),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: SSizes.spaceBtwInputField,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.user_edit),
                          labelText: SText.userName),
                    ),
                    const SizedBox(
                      height: SSizes.spaceBtwInputField,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct),
                          labelText: SText.email),
                    ),
                    const SizedBox(
                      height: SSizes.spaceBtwInputField,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.call),
                          labelText: SText.phoneNumber),
                    ),
                    const SizedBox(
                      height: SSizes.spaceBtwInputField,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.eye_slash),
                          labelText: SText.password),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
