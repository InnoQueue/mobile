import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:innoq/domain/domain.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../application/application.dart';
import '../../presentation.dart';
import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";

  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _smsCodeController = TextEditingController();

  String? _verificationId;
  bool _isCodeSent = false;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTextField(
                  onChanged: (v) => setState(() => name = v),
                  hintText: 'Your name',
                  keyBoardType: TextInputType.name,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  controller: _phoneNumberController,
                  onChanged: (_) {},
                  // onChanged: (value) =>
                  //     setState(() => _phoneNumberController.text = value),
                  hintText: 'Phone number',
                  keyBoardType: TextInputType.phone,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),
                _isCodeSent
                    ? Text('Code sent to ${_phoneNumberController.text}')
                    : CustomButton(
                        // onPressed: _sendCode,
                        backgroundColor: const Color(0xff82cc7d),
                        onPressed: () {
                          _sendCode();
                        },
                        text: 'Send code',
                      ),
                const SizedBox(height: 15),
                _isCodeSent
                    ? Column(
                        children: [
                          CustomTextField(
                            controller: _smsCodeController,
                            onChanged: (_) {},
                            hintText: 'SMS Code',
                            keyBoardType: TextInputType.number,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                        ],
                      )
                    : Container(),
                CustomButton(
                  onPressed: () {
                    print("submitting code!");
                    _signInWithPhoneNumber(context);
                    // if (name.isNotEmpty) {
                    //   await getIt.get<UserRepository>().registerUser(name);

                    //   if (context.mounted) {
                    //     context.router.replaceAll([const LandingRoute()]);
                    //   }
                    // }
                  },
                  backgroundColor: Colors.grey.shade900,
                  text: 'Submit',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _sendCode() {
    print("sending code!");
    try {
      _auth.verifyPhoneNumber(
        phoneNumber: _phoneNumberController.text,
        verificationCompleted: _verificationCompleted,
        verificationFailed: _verificationFailed,
        codeSent: (String verificationId, int? resendToken) {
          print('Code Sent');
          setState(() {
            _verificationId = verificationId;
            _isCodeSent = true;
          });
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          print('Time Out $verificationId');
          _verificationId = verificationId;
          setState(() {});
        },
      );
    } catch (e) {
      print('Failed to Verify Phone Number: $e');
    }
  }

  void _codeAutoRetrievalTimeout(String verificationId) {
    _verificationId = verificationId;
  }

  void _verificationCompleted(PhoneAuthCredential credential) async {
    print('verification completed');
    await _auth.signInWithCredential(credential);
  }

  void _verificationFailed(FirebaseAuthException e) {
    print('Failed to Verify Phone Number: ${e.message}');
  }

  Future<void> _signInWithPhoneNumber(BuildContext context) async {
    print("signig in with phone number!");
    try {
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationId!,
        smsCode: _smsCodeController.text,
      );

      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      print("user credential: $userCredential");

      if (userCredential.user != null) {
        context.router.replaceAll([const LandingRoute()]);
      } else {
        print("Error: Authentication failed.");
      }
    } catch (e) {
      print("Error: $e");
    }
  }
}
