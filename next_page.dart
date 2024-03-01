import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_crc5/generated/locale_keys.g.dart';

class NextPage extends StatelessWidget {
  final String name;
  final String phone;
  final String email;
  final String password;
  final String region;

  NextPage({
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.region,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.results.tr()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              size: 50,
              color: Colors.green,
            ),
            Text(LocaleKeys.successfully.tr(),
                style: TextStyle(fontSize: 24, color: Colors.green)),
            SizedBox(height: 20),
            Text(LocaleKeys.info.tr(), style: TextStyle(fontSize: 18)),
            Text(LocaleKeys.name.tr()),
            Text(': $name'),
            Text(LocaleKeys.phone.tr()),
            Text(': $phone'),
            Text(LocaleKeys.email.tr()),
            Text(': $email'),
            Text(LocaleKeys.country.tr()),
            Text(': $region'),
          ],
        ),
      ),
    );
  }
}
