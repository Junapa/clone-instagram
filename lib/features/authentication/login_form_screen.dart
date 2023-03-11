import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/contants/gaps.dart';
import 'package:tiktok_clone/contants/sizes.dart';
import 'package:tiktok_clone/features/authentication/widgets/form_button.dart';
import 'package:tiktok_clone/features/onboarding/interests_screen.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Map<String, String> _formData = {};
  bool _obscureText = true;
  void _onScaffoldTap() {
    FocusScope.of(context).unfocus();
  }

  void _onSubmitTap() {
    if (_formKey.currentState != null) {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const InterestsScreen(),
          ),
        );
      }
    }
  }

  void _toggleObsecureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onScaffoldTap,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Log in"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size36,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Gaps.v28,
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Email",
                  ),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "Please wrtie your email";
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    if (newValue != null) {
                      _formData["email"] = newValue;
                    }
                  },
                ),
                Gaps.v16,
                TextFormField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    hintText: "Password",
                    suffix: GestureDetector(
                      onTap: _toggleObsecureText,
                      child: FaIcon(
                        _obscureText
                            ? FontAwesomeIcons.solidEye
                            : FontAwesomeIcons.eyeSlash,
                        color: Colors.grey.shade500,
                        size: Sizes.size20,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "Please write your password!";
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    if (newValue != null) {
                      _formData["password"] = newValue;
                    }
                  },
                ),
                Gaps.v28,
                GestureDetector(
                  onTap: _onSubmitTap,
                  child: const FormButton(
                    disabled: false,
                    btnText: "Log in",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
