import 'package:http/http.dart';
import 'dart:convert';

Future<void> sendEmail({
  required String name,
  required String email,
  required String subject,
  required String message,
}) async {
  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  final response = await post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: json.encode({
      'service_id': 'service_liqsjxd',
      'template_id': 'template_15p76qh',
      'user_id': 'nxBt96FK5KiVKUdqO',
      'template_params': {
        'from_name': name,
        'email': email,
        'from_subject': subject,
        'message': message,
      },
    }),
  );

  if (response.statusCode == 200) {
    print('Email sent successfully!');
  } else {
    print('Failed to send email: ${response.body}');
  }
}
