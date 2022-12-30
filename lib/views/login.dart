import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import 'package:user_information/riverpod/riverpod_management.dart';

class Login extends ConsumerStatefulWidget {
  const Login({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginState();
}

class _LoginState extends ConsumerState<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: ref.read(loginRiverpod).username,
                decoration: InputDecoration(
                    hintText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: 10.allBR,
                    )),
              ),
              TextField(
                controller: ref.read(loginRiverpod).password,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: 10.allBR,
                    )),
              ),
              SizedBox(
                width: Grock.width,
                child: ElevatedButton(
                  onPressed: () => ref.read(loginRiverpod).fetch(),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 4, 99, 22),
                      textStyle: const TextStyle(
                        fontSize: 20,
                      )),
                  child: const Text('Giriş Yap'),
                ),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
