import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_crc5/generated/locale_keys.g.dart';
import 'next_page.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _regionController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.person,
              size: 50,
              color: Color.fromARGB(255, 0, 255, 102),
            ),
            Text(
              LocaleKeys.registration.tr(),
              style: TextStyle(
                  fontSize: 24, color: Color.fromARGB(255, 0, 251, 42)),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: LocaleKeys.name.tr(),
                icon: Icon(Icons.person),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return LocaleKeys.pname.tr();
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: LocaleKeys.phone.tr(),
                icon: Icon(Icons.phone),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return LocaleKeys.pphone.tr();
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: LocaleKeys.email.tr(),
                icon: Icon(Icons.email),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return LocaleKeys.pemail.tr();
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _regionController,
              decoration: InputDecoration(
                labelText: LocaleKeys.country.tr(),
                icon: Icon(Icons.location_on),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return LocaleKeys.pcountry.tr();
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: LocaleKeys.passwotd.tr(),
                icon: Icon(Icons.lock),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return LocaleKeys.ppaswword.tr();
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NextPage(
                        name: _nameController.text,
                        phone: _phoneController.text,
                        email: _emailController.text,
                        region: _regionController.text,
                        password: _passwordController.text,
                      ),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 255, 64)),
              child: Text(LocaleKeys.send.tr()),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.setLocale(Locale('en'));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 21, 255)),
              child: Text('English'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.setLocale(Locale('ru'));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 21, 255)),
              child: Text('Русский'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.setLocale(Locale('kk'));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 21, 255)),
              child: Text('Қазақша'),
            ),
          ],
        ),
      ),
    );
  }
}
