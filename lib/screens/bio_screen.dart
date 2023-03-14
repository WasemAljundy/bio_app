import 'package:bio_app/widgets/BioCard.dart';
import 'package:flutter/material.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Bio',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
              Colors.blue.shade700,
              Colors.blue.shade300,
              Colors.blue.shade100
            ])),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Spacer(),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://rest.ucas.edu.ps/EmpServices.svc/personal_image/SWsxNWVHbVVVREcvdEJFa3NjOHFidz090',
                ),
                radius: 50,
              ),
              SizedBox(height: 10),
              Text(
                'Student Name',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Kanit',
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Wasem Aljundy',
                style: TextStyle(
                  fontFamily: 'Kanit',
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              Divider(
                thickness: 0.7,
                color: Colors.white,
                indent: 30,
                endIndent: 30,
                height: 50,
              ),
              BioCard(
                  leadingIcon: Icons.email,
                  trailingIcon: Icons.send,
                  title: 'Email',
                  subTitle: 'wasemaljundy22@gmail,com'),
              SizedBox(height: 10),
              BioCard(
                  leadingIcon: Icons.phone_android,
                  trailingIcon: Icons.call,
                  title: 'Mobile',
                  subTitle: '+972592463727'),
              SizedBox(height: 10),
              BioCard(
                  leadingIcon: Icons.location_pin,
                  trailingIcon: Icons.map,
                  title: 'Location',
                  subTitle: 'Palestine, Gaza'),
              Spacer(),
              Text('UCAS', style: TextStyle(fontFamily: 'Kanit', fontSize: 18)),
              SizedBox(height: 5)
            ],
          ),
        ),
      ),
    );
  }
}
