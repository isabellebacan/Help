import 'package:flutter/material.dart';

const _orange = Color(0xFFE65B0B);
const _background = Color(0xFFE5E5E5);
const _referenceSize = Size(272, 586);

void main() {
  runApp(const HelpApp());
}

class HelpApp extends StatelessWidget {
  const HelpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const RegistrationChoiceScreen(),
    );
  }
}

class RegistrationChoiceScreen extends StatelessWidget {
  const RegistrationChoiceScreen({super.key});

  void _openProvisional(BuildContext context, String text) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => ProvisionalScreen(text: text)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      body: SizedBox.expand(
        child: FittedBox(
          fit: BoxFit.contain,
          child: SizedBox(
            width: _referenceSize.width,
            height: _referenceSize.height,
            child: _buildDesign(context),
          ),
        ),
      ),
    );
  }

  Widget _buildDesign(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 22,
          top: 49,
          width: 246,
          height: 533,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 91,
          height: 116,
          child: Center(
            child: Image.asset(
              'assets/images/logo_help.png',
              width: 116,
              height: 116,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          left: 58,
          top: 248,
          width: 175,
          height: 46,
          child: _ActionButton(
            label: 'Profissional',
            onTap: () => _openProvisional(context, 'Cadastro de profissional'),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 308,
          height: 18,
          child: Center(child: _smallOrangeText('Ou')),
        ),
        Positioned(
          left: 58,
          top: 336,
          width: 175,
          height: 45,
          child: _ActionButton(
            label: 'Cliente',
            onTap: () => _openProvisional(context, 'Cadastro de cliente'),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 426,
          height: 18,
          child: Center(child: _smallOrangeText('Já possui cadastro?')),
        ),
        Positioned(
          left: 40,
          top: 449,
          width: 210,
          height: 25,
          child: _ActionButton(
            label: 'Entrar',
            outlined: true,
            onTap: () => _openProvisional(context, 'Entrar'),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 484,
          height: 13,
          child: Center(
            child: Text(
              'Ao continuar, você concorda com os nossos',
              style: const TextStyle(
                color: Color(0xFF858D95),
                fontSize: 8,
                height: 1,
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 498,
          height: 13,
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _TextLink(
                    label: 'Termos de uso',
                    onTap: () => _openProvisional(context, 'Termos de uso'),
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    'ou',
                    style: TextStyle(
                      color: Color(0xFF858D95),
                      fontSize: 8,
                      height: 1,
                    ),
                  ),
                  const SizedBox(width: 6),
                  _TextLink(
                    label: 'Política e Privacidade',
                    onTap: () =>
                        _openProvisional(context, 'Política e Privacidade'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _smallOrangeText(String text) {
    return Text(
      text,
      style: const TextStyle(color: _orange, fontSize: 10, height: 1),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.label,
    required this.onTap,
    this.outlined = false,
  });

  final String label;
  final VoidCallback onTap;
  final bool outlined;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(outlined ? 10 : 8),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: outlined ? Colors.white : _orange,
            borderRadius: BorderRadius.circular(outlined ? 10 : 8),
            border: outlined ? Border.all(color: _orange, width: 0.7) : null,
            boxShadow: const [
              BoxShadow(
                color: Color(0x66000000),
                blurRadius: 2,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Text(
            label,
            style: TextStyle(
              color: outlined ? _orange : Colors.white,
              fontSize: outlined ? 9 : 10,
              height: 1,
            ),
          ),
        ),
      ),
    );
  }
}

class _TextLink extends StatelessWidget {
  const _TextLink({required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Text(
        label,
        style: const TextStyle(color: _orange, fontSize: 8, height: 1),
      ),
    );
  }
}

class ProvisionalScreen extends StatelessWidget {
  const ProvisionalScreen({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(text)));
  }
}
