import 'package:flutter/material.dart';
import 'package:my_portfolio/navigation_bar/navigation_bar.dart';
import 'package:my_portfolio/widgets/footer_section.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final _formKey = GlobalKey<FormState>();

  // Reusable text styles
  final TextStyle labelStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  final TextStyle inputStyle = const TextStyle(fontSize: 15);
  final TextStyle hintStyle = const TextStyle(fontSize: 15, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Prashant.',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                ),
                Spacer(),
                Flexible(child: NavBar()),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 70),
                  const Text(
                    'CONTACTS',
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Form Section
                      Expanded(
                        flex: 3,
                        child: Form(
                          key: _formKey,
                          child: ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: _buildTextField(
                                      'Name',
                                      'Enter your name',
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: _buildTextField(
                                      'Email',
                                      'Email address',
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 24),
                              Row(
                                children: [
                                  Expanded(
                                    child: _buildTextField(
                                      'Company Name',
                                      'Company Name',
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: _buildTextField(
                                      'Website URL (if any)',
                                      'www.example.com',
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 24),
                              _buildDropdown(),
                              const SizedBox(height: 24),
                              _buildTextArea(
                                'Project Description',
                                'Write here',
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(
                        width: 60,
                      ), // Spacing between form and sidebar
                      // Sidebar Section
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Availability",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Available for internship\nfull-time or part-time\nopen to remote or hybrid.",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 24),
                            Text(
                              "Contact",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "prshntydv6061@gmail.com\n8287206761",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.reset(); // Clears the form
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Form sent successfully!'),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9C42F5),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 28,
                      ),
                      shape: const RoundedRectangleBorder(),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Send it Over",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.arrow_right_alt,
                          size: 22,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 64),
                ],
              ),
            ),
            const FooterSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: labelStyle),
        const SizedBox(height: 8),
        TextFormField(
          style: inputStyle,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: hintStyle,
            border: const OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) return 'Please enter $label';
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildTextArea(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: labelStyle),
        const SizedBox(height: 8),
        TextFormField(
          style: inputStyle,
          maxLines: 5,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: hintStyle,
            border: const OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty)
              return 'Please describe your project';
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What services are you looking for? (select one)',
          style: labelStyle,
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          items: const [
            DropdownMenuItem(value: 'design', child: Text('Frontend')),
            DropdownMenuItem(value: 'development', child: Text('Backend')),
            DropdownMenuItem(value: 'marketing', child: Text('FullStack')),
          ],
          onChanged: (value) {},
          style: inputStyle,
          decoration: InputDecoration(
            hintText: 'Select one...',
            hintStyle: hintStyle,
            border: const OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty)
              return 'Please select a service';
            return null;
          },
        ),
      ],
    );
  }
}
