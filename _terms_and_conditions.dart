import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(Icons.newspaper,color: Colors.white,),
            SizedBox(width: 10),
            Text('Terms and Conditions',style: TextStyle(color: Colors.white),),
          ],
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  'Terms and Conditions\n\n' // Replace with your actual terms and conditions
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Suspendisse varius enim in eros elementum tristique. '
                  'Duis cursus, mi quis viverra ornare, eros dolor interdum nulla, '
                  'ut commodo diam libero vitae erat. Aenean faucibus nibh et justo '
                  'cursus id rutrum lorem imperdiet. Nunc ut sem vitae risus tristique '
                  'posuere.\n\n'
                  'Duis cursus, mi quis viverra ornare, eros dolor interdum nulla, '
                  'ut commodo diam libero vitae erat. Aenean faucibus nibh et justo '
                  'cursus id rutrum lorem imperdiet. Nunc ut sem vitae risus tristique '
                  'posuere.\n\n'
                  'Duis cursus, mi quis viverra ornare, eros dolor interdum nulla, '
                  'ut commodo diam libero vitae erat. Aenean faucibus nibh et justo '
                  'cursus id rutrum lorem imperdiet. Nunc ut sem vitae risus tristique '
                  'posuere.\n\n'
                  'Duis cursus, mi quis viverra ornare, eros dolor interdum nulla, '
                  'ut commodo diam libero vitae erat. Aenean faucibus nibh et justo '
                  'cursus id rutrum lorem imperdiet. Nunc ut sem vitae risus tristique '
                  'posuere.\n\n'
                  'Last updated: May 18, 2024',
                  style: TextStyle(fontSize: 16,),textAlign: TextAlign.justify,
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Handle accept action
                      },
                      child: Text('Accept'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Handle reject action
                      },
                      child: Text('Reject'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Last updated: May 18, 2024',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
