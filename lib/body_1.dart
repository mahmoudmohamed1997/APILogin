import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:log/provider.dart';
import 'Testscreen.dart';
import 'package:provider/provider.dart';

class Body1 extends StatelessWidget {
  const Body1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(),
            const SizedBox(
              height: 200,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    borderSide: BorderSide(width: 10),
                  ),
                  contentPadding: EdgeInsets.all(20),
                  labelText: 'Email',
                  hintText: 'Email',
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    borderSide: BorderSide(width: 10),
                  ),
                  contentPadding: EdgeInsets.all(20),
                  labelText: 'Password',
                  hintText: 'password',
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<Provider2>(context, listen: false).postLogin();
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const Testscreen()));
              },
              child: const Text('Login'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Text(Provider.of<Myprovider>(context).numone.toString());
            //   },
            //   child: const Text('+'),
            // ),
          ],
        ),
      ),
    );
  }
}
