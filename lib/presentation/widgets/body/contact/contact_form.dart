import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';
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
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Color(0xff7562E0),
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      width: _getFormWidth(context.width),
      height: _getFormHeight(context.width),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: [
            CustomTextFormField(title: "Name", controller: _nameController),
            CustomTextFormField(title: "E-mail", controller: _emailController),
            CustomTextFormField(
              title: "Subject",
              controller: _subjectController,
            ),
            CustomTextFormField(
              title: "Type a message here...",
              controller: _messageController,
              maxLines: 3,
            ),
            CustomButton2(
              Colors.black,
              label: 'Submit',
              borderColor: Colors.black38,
              backgroundColor: Colors.white,
              onPressed: () {},
              width: 160,
            ),
          ],
        ),
      ),
    );
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

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.title,
    required TextEditingController controller,
    this.maxLines = 1,
  }) : _nameController = controller;
  final String title;
  final TextEditingController _nameController;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeCubit>().state.themeData;
    TextStyle? getExpMsgContentStyle() {
      if (context.width < DeviceType.mobile.getMaxWidth()) {
        return theme.textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.w500,
          color: Colors.white,
        );
      } else if (context.width < DeviceType.ipad.getMaxWidth()) {
        return theme.textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.w500,
          color: Colors.white,
        );
      } else {
        return theme.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w500,
          color: Colors.white,
        );
      }
    }

    return TextFormField(
      controller: _nameController,
      style: getExpMsgContentStyle(),
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: title,

        labelStyle: getExpMsgContentStyle(),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ), // Default (unfocused) underline
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 2.0,
          ), // Focused underline
        ),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white54,
          ), // Optional (disabled state)
        ),
      ),
    );
  }
}
