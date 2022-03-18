import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Login Page", home: MyForm());
  }
}

class MyForm extends StatelessWidget {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://www.angelsagainstabuse.org/wp-content/uploads/2018/11/blue-moving-flowing-abstract-waves-on-white-background-blurred-smooth-seamless-loop-design-video-animation-1920x1080_spqkl7pg__F0000.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.fromLTRB(300, 20, 300, 20),
        child: Form(
          key: _key,
          child: Column(
            children: [
              ClipRRect(
                child: Image.network(
                  "https://tech.pelmorex.com/wp-content/uploads/2020/10/flutter.png",
                  fit: BoxFit.fill,
                  width: 300,
                  height: 150,
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  border: OutlineInputBorder(),
                  labelText: 'UserName',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "User Name cannot be empty";
                  } else if (value.length <= 5) {
                    return "User Name cannot be less than 5";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter valid Password";
                  } else if (value.length <= 8) {
                    return "Password cannot be less than 8";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () => {
                  if (_key.currentState!.validate())
                    {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Login Successfull',
                              textAlign: TextAlign.center),
                        ),
                      ),
                    }
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white, backgroundColor: Colors.blue),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.fromLTRB(164, 20, 164, 20)),
              ),
              SizedBox(height: 20),
              SizedBox(
                child: Text(
                  "Don't have an account?",
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.white, backgroundColor: Colors.blue),
                ),
                onPressed: () => Register(context),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.fromLTRB(155, 20, 155, 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


void Register(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          "REGISTER",
          textAlign: TextAlign.center,
          style:
              TextStyle(color: Color.fromARGB(255, 85, 159, 243), fontSize: 22),
        ),
        content: Signup(),
        actions: <Widget>[
          FlatButton(
            child: Text('Close'),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
        actionsPadding: EdgeInsets.fromLTRB(180, 20, 180, 20),
      );
    },
  );
}



class Signup extends StatelessWidget {
  final _key2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://media.istockphoto.com/vectors/horizontal-vector-illustration-of-an-empty-sky-blue-coloured-grungy-vector-id1139678803?k=20&m=1139678803&s=612x612&w=0&h=jGhaWq_34qr6OQlJMlf4doDv7txteI0fVPDFG3sPzew='),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
            key: _key2,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      hintText: "User Name",
                      border: OutlineInputBorder()),
                  initialValue: "",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "User Name cannot be empty";
                    } else if (value.length <= 5) {
                      return "Username should be greater than 5";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    hintText: "Password",
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  initialValue: "",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password cannot be empty";
                    } else if (value.length <= 8) {
                      return "Password should be greater than 8";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(),
                    labelText: 'Mobile No',
                  ),
                  initialValue: "",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Mobile no cannot be empty";
                    } else if (value.length != 10) {
                      return "Mobile no should be 10 digit";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.accessibility),
                    border: OutlineInputBorder(),
                    labelText: 'Age',
                  ),
                  initialValue: "",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Age cannot be empty";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10),
                FlatButton(
                  onPressed: () => {
                    if (_key2.currentState!.validate())
                      {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text("Registration Successfull"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'Done'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        ),
                      },
                  },
                  child: const Text("Register"),
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
              ],
            )),
      ),
    );
  }
}
