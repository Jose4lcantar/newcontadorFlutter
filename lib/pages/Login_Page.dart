import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Fondo(),
          Contenido(),
        ],
      ),
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade300, Colors.blue],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
      ),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({Key? key}) : super(key: key);

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Bienvenido a tu cuenta',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              letterSpacing: 1.5,
            ),
          ),
          Datos(),
          SizedBox(
            height: 5,
          ),
          Privacidad(),
        ],
      ),
    );
  }
}

class Datos extends StatefulWidget {
  const Datos({Key? key}) : super(key: key);

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Email',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ingresa tu correo electronico',
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Password',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            obscureText: showPassword,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'Contraseña',
              suffixIcon: IconButton(
                icon: const Icon(Icons.remove_red_eye_outlined),
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
              ),
            ),
          ),
          const Remember(),
          const SizedBox(
            height: 30,
          ),
          Botones(),
        ],
      ),
    );
  }
}

class Remember extends StatelessWidget {
  const Remember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
        ),
        Text(
          'Recuérdame',
          style: TextStyle(fontSize: 12),
        ),
        Spacer(),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ResetPasswordPage()),
            );
          },
          child: Text(
            '¿Olvidó su contraseña?',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}

class Botones extends StatelessWidget {
  const Botones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color(0xff142047),
              ),
            ),
            child: const Text('Iniciar Sesión',
                style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(
          height: 25,
          width: double.infinity,
        ),
        const Text(
          'O entra con',
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
              onPressed: () {},
              child: const Text(
                'Google',
                style: TextStyle(
                  color: Color(0xff142047),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )),
        ),
        const SizedBox(
          height: 15,
          width: double.infinity,
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
              onPressed: () {},
              child: const Text(
                'Facebook',
                style: TextStyle(
                  color: Color(0xff142047),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )),
        ),
        const SizedBox(
          height: 15,
          width: double.infinity,
        ),
      ],
    );
  }
}

class Privacidad extends StatelessWidget {
  const Privacidad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: const Text('Política de privacidad',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            )),
      ),
    );
  }
}

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restablecer Contraseña'),
      ),
      body: Center(
        child: Text('Página para recuperar tu contraseña'),
      ),
    );
  }
}
