import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../common_widgets/custom_button.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _emailController;
  late TextEditingController _messageController;
  late TextEditingController _nameController;
  late TextEditingController _subjectController;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey();
    _emailController = TextEditingController();
    _messageController = TextEditingController();
    _nameController = TextEditingController();
    _subjectController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _messageController.dispose();
    _nameController.dispose();
    _subjectController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var themeData = context.watch<ThemeCubit>().state.themeData;
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: themeData.cardColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            context.width > DeviceType.ipad.getMaxWidth() ? 0 : 16,
          ),
          bottomRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      width: _getFormWidth(context.width),
      // height: context.width * 0.35,
      height: _getFormHeight(context.width),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _nameController,
              style: themeData.textTheme.labelLarge,
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: _getExpMsgContentStyle(context.width, themeData),
              ),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _emailController,
              style: themeData.textTheme.labelLarge,
              // style: _getExpMsgContentStyle(context.width, themeData),
              decoration: InputDecoration(
                labelText: 'E-mail',
                labelStyle: _getExpMsgContentStyle(context.width, themeData),
              ),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _subjectController,
              style: themeData.textTheme.labelLarge,
              decoration: InputDecoration(
                labelText: 'Subject',
                labelStyle: _getExpMsgContentStyle(context.width, themeData),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _messageController,
              maxLines: 3,
              style: themeData.textTheme.bodyLarge,
              decoration: InputDecoration(
                labelText: 'Type a message here...',
                labelStyle: _getExpMsgContentStyle(context.width, themeData),
              ),
            ),
            const SizedBox(height: 16),
            CustomButton(
              label: 'Submit',
              onPressed: () {},
              backgroundColor: AppColors.primaryColor,
              width: _getFormWidth(context.width) / 2,
            ),
          ],
        ),
      ),
    );
  }

  TextStyle? _getExpMsgContentStyle(double deviceWidth, ThemeData theme) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return theme.textTheme.titleSmall?.copyWith(
        fontWeight: FontWeight.w500,
        // color: theme.hintColor,
      );
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return theme.textTheme.titleSmall?.copyWith(
        fontWeight: FontWeight.w500,
        // color: theme.hintColor,
      );
    } else {
      return theme.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w500,
        // color: theme.hintColor,
      );
    }
  }

  double _getFormWidth(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return deviceWidth;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return deviceWidth / 1.6;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return deviceWidth / 2;
    } else {
      return deviceWidth / 2.5;
    }
  }

  double _getFormHeight(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return deviceWidth * 1.2;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return deviceWidth / 1.4;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return deviceWidth / 1.8;
    } else if (deviceWidth < DeviceType.largeScreenDesktop.getMaxWidth()) {
      return deviceWidth / 2.4;
    } else {
      return deviceWidth / 2.5;
    }
  }
}
