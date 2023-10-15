import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),

      /// Drawer
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'APPS NAME',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.call),
              title: const Text('Contact Us'),
              onTap: () {
                // Implementasikan aksi ketika item dipilih
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About Us'),
              onTap: () {
                // Implementasikan aksi ketika item dipilih
              },
            ),
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text('Login'),
              onTap: () {
                // Implementasikan aksi ketika item dipilih
              },
            ),
          ],
        ),
      ),

      /// Body
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/background6.jpg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                /// WELCOME SECTION
                Padding(
                  padding: const EdgeInsets.only(top: 200, bottom: 20),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/waving.png',
                        scale: 2,
                      ),
                      const Text(
                        'Hello, how are you today?',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                ),

                /// ABOUT US SECTION
                ListTile(
                  title: const Align(
                    alignment: Alignment.center,
                    child: Text('About us'),
                  ),
                  titleTextStyle:
                      Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: Colors.black,
                          ),
                  subtitle: const Align(
                    alignment: Alignment.center,
                    child: Text('Our Programs'),
                  ),
                  subtitleTextStyle:
                      Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.black,
                          ),
                ),

                /// ABOUT US CONTENT
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        elevation: 10,
                        child: Container(
                          width: 150,
                          height: 150,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        elevation: 10,
                        child: Container(
                          width: 150,
                          height: 150,
                        ),
                      ),
                    ),
                  ],
                ),

                /// CONTACT US SECTION
                ListTile(
                  title: const Text('Contact us'),
                  titleTextStyle:
                      Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: Colors.black,
                          ),
                  subtitle: const Text(
                      'Need to get in touch with us? Either fill out the form with your inquiry or find the department email you do like to contact below.',
                      textAlign: TextAlign.justify),
                  subtitleTextStyle: Theme.of(context).textTheme.bodyLarge,
                ),

                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(20),
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Form(
                    key: key,
                    child: Column(
                      children: [
                        /// USERNAME
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: const Text('Full Name'),
                              fillColor: Colors.blueGrey[300],
                              filled: true,
                              border: const OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ),

                        /// EMAIL
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: const Text('Email'),
                              fillColor: Colors.blueGrey[300],
                              filled: true,
                              border: const OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),

                        /// MESSAGE
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: const Text('What can we help you with ?'),
                              fillColor: Colors.blueGrey[300],
                              filled: true,
                              border: const OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ),

                        /// SUBMIT BUTTON
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                            width: 160,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/background6.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            child: TextButton(
                              onPressed: () => showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text('Alert'),
                                  titleTextStyle: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins'),
                                  content: const Text(
                                      'Are you sure about what you have filled in?'),
                                  actions: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('YES'),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('NO'),
                                    ),
                                  ],
                                  actionsAlignment: MainAxisAlignment.center,
                                ),
                              ),
                              child: const Text(
                                'Submit',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
