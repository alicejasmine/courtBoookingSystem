import 'dart:ui';

import 'package:flutter/material.dart';

class ClubInfo extends StatefulWidget {
  const ClubInfo({Key? key}) : super(key: key);

  @override
  State<ClubInfo> createState() => _ClubInfoState();
}

class _ClubInfoState extends State<ClubInfo> {
  @override
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildExpansionPanel(
              title: 'Opening Hours',
              content: [
                Text(
                  'Monday - Friday: 8:00 - 18:00',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Saturday - Sunday: 9:00 - 15:00',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 20),
            _buildExpansionPanel(
              title: 'Location',
              content: [
                Text(
                  'Boulevard 17A',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '5000, Odense C',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 20),
            _buildExpansionPanel(
              title: 'Contact Information',
              content: [
                Text(
                  'Phone: + 45 40586928',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Email: info@squashclub.com',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 20),
            _buildExpansionPanel(
              title: 'FAQs',
              content: [
                _buildFaqExpansionTile(
                  question: 'How do I book equipment such as rackets and shoes?',
                  answer: 'Yes, you can rent equipment like rackets and shoes from the club. Please inquire at the reception for rental rates and availability.',
                ),
                _buildFaqExpansionTile(
                  question: 'Can I bring guests to the club?',
                  answer: 'Yes, you can bring guests to the club. However, they may need to pay a guest fee or be accompanied by a member.',
                ),
                _buildFaqExpansionTile(
                  question: 'Do you offer coaching services?',
                  answer: 'Yes, we provide coaching services for players of all skill levels. You can inquire at the reception desk for more information.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExpansionPanel(
      {required String title, required List<Widget> content}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[200],
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: Theme(
        data: ThemeData(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 6),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: content,
              ),
            ),
          ],
          initiallyExpanded: false,
        ),
      ),
    );
  }

  Widget _buildFaqExpansionTile({required String question, required String answer}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Theme(
        data: ThemeData(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          title: Text(
            question,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                answer,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
          initiallyExpanded: false,
        ),
      ),
    );
  }
}