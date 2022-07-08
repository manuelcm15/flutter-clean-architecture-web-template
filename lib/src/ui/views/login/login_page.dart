import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:web_template/src/ui/utils/app_colors.dart';
import 'package:web_template/src/ui/utils/app_text_style.dart';
import 'package:web_template/src/ui/views/login/login_controller.dart';
import 'package:web_template/src/ui/widget/app_header_banner.dart';
import 'package:web_template/src/ui/widget/background_priver.dart';
import 'package:web_template/src/ui/widget/primary_action_button.dart';
import 'package:web_template/src/ui/widget/responsive_builder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controller = LoginController();

  @override
  void initState() {
    super.initState();
    // Schedule init controller
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: ResponsiveBuilder(
          mobileBuilder: (context, constraints) {
            return _loginForm();
          },
          tabletBuilder: (context, constraints) {
            return _loginForm();
          },
          desktopBuilder: (context, constraints) {
            final size = MediaQuery.of(context).size;
            return Container(
              width: size.width,
              height: size.height,
              child: Row(
                children: [

                  // Background
                  const BackgroundPriver(),

                  // View Container
                  Container(
                    width: 600,
                    height: double.infinity,
                    child: Column(
                      children: [
                        SizedBox( height: 50 ),
                        Expanded(child: _loginForm() ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _loginForm(){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AppHeaderBanner(),
          const SizedBox(height: 16,),
          _textEmailInputField(),
          _textPasswordInputField(),
          _btnLogin()
        ],
      ),
    );
  }

  Widget _textEmailInputField() {
    return Container(
        margin: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 5),
        child: TextFormField(
            controller: _controller.emailInputController,
            keyboardType: TextInputType.emailAddress,
            style: AppTextStyle.normalTextStyle,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.backgroundInput,
              hintText: 'Email',
              hintStyle: AppTextStyle.normalTextStyle,
              contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            )
        )
    );
  }

  Widget _textPasswordInputField() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        child: TextFormField(
            controller: _controller.passwordInputController,
            keyboardType: TextInputType.text,
            obscureText: true,
            style: AppTextStyle.normalTextStyle,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.backgroundInput,
              hintText: 'Contraseña',
              hintStyle: AppTextStyle.normalTextStyle,
              contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            )
        )
    );
  }

  Widget _btnLogin() {
    return Container(
      width: double.infinity,
      height: 45,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
      child: PrimaryActionButton(
        text: 'Login',
        textColor: Colors.white,
        backgroundColor: AppColors.priverGoColors,
        onPressed:(){
          _controller.Login();
        },
      ),
    );
  }
}



