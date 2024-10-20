import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/bottomNavigation.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _sekolahController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _deskripsiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 80),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Profile Form",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 40,
                        color: Colors.white,
                        letterSpacing: 2.0,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Please fill in your profile details",
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                    const SizedBox(height: 40),
                    _buildTextField(
                      controller: _usernameController,
                      label: 'Name',
                      hint: 'Enter your name',
                    ),
                    const SizedBox(height: 20),
                    _buildTextField(
                      controller: _sekolahController,
                      label: 'School',
                      hint: 'Enter your school name',
                    ),
                    const SizedBox(height: 20),
                    _buildTextField(
                      controller: _roleController,
                      label: 'Role',
                      hint: 'Enter your role',
                    ),
                    const SizedBox(height: 20),
                    _buildTextField(
                      controller: _deskripsiController,
                      label: 'Description',
                      hint: 'Enter a short description',
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Bottomnavigation(
                            username: _usernameController.text,
                            sekolah: _sekolahController.text,
                            role: _roleController.text,
                            deskripsi: _deskripsiController.text,
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text(
                            'Please fill in all the fields!',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    }
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFE94057), Color(0xFFF27121)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "Submit",
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hint,
  }) {
    return TextFormField(
      controller: controller,
      style: GoogleFonts.lato(
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $label';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: label,
        labelStyle: GoogleFonts.lato(
          fontSize: 16,
          color: Colors.white.withOpacity(0.7),
        ),
        hintText: hint,
        hintStyle: GoogleFonts.lato(
          fontSize: 14,
          color: Colors.white.withOpacity(0.5),
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.white.withOpacity(0.9),
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
