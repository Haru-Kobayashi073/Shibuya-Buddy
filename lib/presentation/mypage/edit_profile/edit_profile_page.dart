import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/entities/user.dart';
import '../../../i18n/strings.g.dart';
import '../../../utils/extensions/context.dart';
import '../../../utils/hooks/use_form_state_key.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../../utils/validator.dart';
import '../../components/loading_overlay.dart';
import '../../components/simple_text_field.dart';
import '../../components/wide_button.dart';
import 'edit_profile_page_notifier.dart';

class EditProfilePage extends HookConsumerWidget {
  const EditProfilePage({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController(text: user.name);
    final state = ref.watch(editProfilePageNotifierProvider(user));
    final formKey = useFormStateKey();
    final notifier = ref.read(editProfilePageNotifierProvider(user).notifier);
    const maxBytes = 16;

    return state.when(
      data: (value) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              t.editProfilePage.title,
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Gap(32),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () async => notifier.pickImage(),
                        child: ClipOval(
                          child: value.imageFile != null
                              ? Image.file(
                                  value.imageFile!,
                                  fit: BoxFit.cover,
                                  width: context.deviceWidth * 0.3,
                                  height: context.deviceWidth * 0.3,
                                )
                              : Icon(
                                  Icons.account_circle,
                                  size: context.deviceWidth * 0.3,
                                ),
                        ),
                      ),
                      const Gap(32),
                      Form(
                        key: formKey,
                        child: SimpleTextField(
                          controller: controller,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          validator: (value) =>
                              Validator.userName(value, maxBytes),
                          onFieldSubmitted: (_) {},
                          label: t.editProfilePage.textFields.name,
                          maxBytes: maxBytes,
                        ),
                      ),
                    ],
                  ),
                  const Gap(16),
                  WideButton(
                    label: t.editProfilePage.buttons.submit,
                    color: AppColor.yellow600Primary,
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        await notifier.editProfile(
                          name: controller.text,
                          onSuccess: () => context.pop(),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
      error: (_, __) => const SizedBox.shrink(),
      loading: Loading.new,
    );
  }
}
