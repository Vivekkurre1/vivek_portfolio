import 'package:url_launcher/url_launcher.dart';

void customeUrlLauncher(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  }
}
