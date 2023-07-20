
import 'package:flutter/material.dart';

class AuthWidget extends StatelessWidget{
  const AuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: const Padding(
          padding: EdgeInsets.only(left:16, right:16),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom:26, top:22),
                child: SizedBox(
                    width: 41,
                    height: 20,
                    child: Placeholder()),
              ),
              Text("Вход ВКонтакте", style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w500
              ),),
              Padding(
                padding: EdgeInsets.only(top: 8, bottom: 24),
                child: Text("Введите телефон или почту, которые привязаны к аккаунту",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(129, 140, 153, 100),
                ),),
              ),
              FormWidget(),
              ButtonWidget(),
              SizedBox(height: 14,),
              Text("Нажимая «Продолжить», вы принимаете пользовательское соглашение и политику конфиденциальности",
                style: TextStyle(
                  color: Color.fromRGBO(109, 120, 133, 1),
                  fontSize: 11,
              ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CheckboxWidget extends StatefulWidget{
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  void foo(bool? value) {
    setState(() {
      isChecked = value!;
    });
  }

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.1,
      child: Checkbox(
          value: isChecked,
          onChanged: foo,
          splashRadius: 0,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
      ),
    );
  }
}

class ButtonWidget extends StatefulWidget{
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  void foo(){}

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: foo, child: Text("Продолжить"),
    style: const ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(45, 129, 224, 1)),
      textStyle: MaterialStatePropertyAll(TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500
      )),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8)))),
      fixedSize: MaterialStatePropertyAll(Size(382, 44))

    ),
    );
  }
}

class FormWidget extends StatefulWidget{
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextField(
          //expands: true,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromRGBO(242, 243, 245, 100),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))
            ),
            contentPadding: EdgeInsets.only(left:12, right:12),
            labelText: 'Телефон или почта',

          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 0, bottom: 16),
          child: Row(children: [
            CheckboxWidget(),
            SizedBox(width: 8,),
            Text('Сохранить вход ', style: TextStyle(
                color: Color.fromRGBO(129, 140, 153, 1),
                fontSize: 16,
                fontWeight: FontWeight.w400
            ),),
            Icon(Icons.question_mark,
              color: Color.fromRGBO(184, 193, 204, 1),
              size: 16,)
          ],),
        ),
      ],
    );
  }
}