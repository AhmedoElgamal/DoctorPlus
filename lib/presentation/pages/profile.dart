import 'package:doctor_plus/utils/routes.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void navigate({required String route}) => Navigator.pushNamed(context, route);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 124, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Profile"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: IconButton(
              onPressed: () {
                navigate(route: Routes.settings);
              },
              icon: const Icon(
                Icons.settings,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(height: 90),
                    NameWidget(name: "A.Rahman Khallaf"),
                    EmailWidget(email: "a.rahman@gmail.com"),
                    const SizedBox(height: 10),
                    RowNavigatorWidget(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 19, horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 234, 242, 255),
                                    borderRadius: BorderRadius.circular(20)),
                                padding: EdgeInsets.all(15),
                                child: Image.asset("assets/icons/id.png"),
                                width: 60,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Personal Information",
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          const Divider(
                            height: 20,
                            thickness: 1,
                            color: Colors.black12,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 233, 250, 239),
                                    borderRadius: BorderRadius.circular(20)),
                                padding: EdgeInsets.all(15),
                                child: Image.asset("assets/icons/tests.png"),
                                width: 60,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "My Test & Diagnostic",
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          const Divider(
                            height: 20,
                            thickness: 1,
                            color: Colors.black12,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 255, 238, 239),
                                    borderRadius: BorderRadius.circular(20)),
                                padding: EdgeInsets.all(15),
                                child: Image.asset("assets/icons/payment.png"),
                                width: 60,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Payment",
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Positioned.fill(
              top: 60,
              child: Align(
                alignment: Alignment.topCenter,
                child: ProfileImage(),
              ))
        ],
      ),
    );
  }
}

class RowNavigatorWidget extends StatelessWidget {
  const RowNavigatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 248, 248, 248)),
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                "My Appointment",
                style: TextStyle(color: Colors.black54, fontSize: 17),
              ),
            ),
            const VerticalDivider(
              color: Colors.black26,
              width: 25,
              thickness: 1,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Medical Records",
                style: TextStyle(color: Colors.black54, fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EmailWidget extends StatelessWidget {
  const EmailWidget({super.key, required this.email});
  final String email;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(
        email,
        style: const TextStyle(fontSize: 18, color: Colors.black45),
      ),
    );
  }
}

class NameWidget extends StatelessWidget {
  const NameWidget({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black87),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          radius: 80,
          child: CircleAvatar(
            radius: 75,
            backgroundImage: NetworkImage(
                "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
          ),
        ),
        // Edit Icon
        Positioned(
          bottom: 10,
          right: 0,
          child: CircleAvatar(
            radius: 19,
            backgroundColor: Color.fromARGB(255, 248, 248, 248),
            child: Image.asset(
              "assets/icons/edit.png",
              width: 18,
              height: 18,
            ),
          ),
        ),
      ],
    );
  }
}
