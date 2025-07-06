import 'package:flutter/material.dart';

class CostomButtom extends StatelessWidget {
  const CostomButtom({
    this.isloading = false,
    required this.ontap,
    super.key,
    required this.text,
  });
  final String text;
  final VoidCallback? ontap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(16).copyWith(bottom: 40),
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.05,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 163, 206, 241),
            borderRadius: BorderRadius.circular(12),
          ),
          child: isloading
              ? const SizedBox(
                  height: 42,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Text(
                  text,
                  style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
        ),
      ),
    );
  }
}
