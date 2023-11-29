import 'package:flutter/material.dart';

class TermAndCondition extends StatelessWidget {
  const TermAndCondition({super.key});
  static const route = "term_and_condition";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new_outlined,
                size: 20, color: Colors.blue)),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Term And Condition',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.blue,
            // fontSize: 27,
            // fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(),
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Introduction',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec aliquam lobortis purus non pulvinar.',
                ),
                SizedBox(height: 24),
                Text(
                  'Acceptance',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'By using this app or website, you agree to abide by the following Terms and Conditions.',
                ),
                SizedBox(height: 24),
                Text(
                  'User Responsibilities',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Age Restrictions:',
                ),
                Text(
                  'You must be at least 18 years old to use this app or website.',
                ),
                SizedBox(height: 8),
                Text(
                  'Account Creation:',
                ),
                Text(
                  'You are responsible for maintaining the confidentiality of your account credentials.',
                ),
                SizedBox(height: 8),
                Text(
                  'Prohibited Activities:',
                ),
                Text(
                  'You are not allowed to engage in any form of harassment, spamming, or illegal content sharing.',
                ),
                SizedBox(height: 8),
                Text(
                  'Content Ownership:',
                ),
                Text(
                  'You retain ownership of the content you post, but grant the app or website necessary licenses to display or use that content.',
                ),
                SizedBox(height: 24),
                Text(
                  'Intellectual Property',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Copyright Notice:',
                ),
                Text(
                  'All content provided by this app or website is protected by copyright laws.',
                ),
                SizedBox(height: 8),
                Text(
                  'Trademarks:',
                ),
                Text(
                  'The app or website trademarks are the property of their respective owners. Unauthorized use is prohibited.',
                ),
                SizedBox(height: 24),
                Text(
                  'Limitations of Liability',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'We are not responsible for any damages or losses incurred by users while using this app or website.',
                ),
                SizedBox(height: 24),
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'This app or website has a separate Privacy Policy that you should review for details on data collection, usage, and protection.',
                ),
                SizedBox(height: 24),
                Text(
                  'Modifications to Terms and Conditions',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'We reserve the right to modify or update the Terms and Conditions at any time. You will be notified of any changes.',
                ),
                SizedBox(height: 24),
                Text(
                  'Termination',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'We can terminate your access to this app or website if you violate the Terms and Conditions or engage in illegal activities.',
                ),
                SizedBox(height: 24),
                Text(
                  'Governing Law',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'The Terms and Conditions shall be governed by and construed in accordance with the laws of your jurisdiction.',
                ),
                SizedBox(height: 24),
                Text(
                  'Contact Information',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'For any inquiries or concerns, please contact us at example@example.com.',
                ),
                SizedBox(height: 24),
                Text(
                  'Effective Date:',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'These Terms and Conditions are effective as of September 1, 2023.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
