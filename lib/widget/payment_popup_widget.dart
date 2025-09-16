import 'package:backup_ticket/views/Details/detail_screen.dart';
import 'package:backup_ticket/widget/success_popup_widget.dart';
import 'package:flutter/material.dart';

class PaymentPopup extends StatefulWidget {
  const PaymentPopup({super.key});

  @override
  State<PaymentPopup> createState() => _PaymentPopupState();
}

class _PaymentPopupState extends State<PaymentPopup> {
  String selectedPayment = '';
  bool useWalletPoints = false;

  void _showSuccessPopup(BuildContext context) {
    Navigator.pop(context); // Close payment popup first
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const SuccessPopup();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header with close button
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 24), // Space for alignment
                const Text(
                  'Payments',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    child: const Icon(
                      Icons.close,
                      color: Colors.black54,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Total fare section
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Total Fare',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  '₹200',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Payment options
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                _buildPaymentOption(
                  'PhonePe',
                  'assets/phonepe_icon.png',
                  Icons.account_balance_wallet,
                  const Color(0xFF5F259F),
                  'phonepe',
                ),
                _buildPaymentOption(
                  'Google pay',
                  'assets/googlepay_icon.png',
                  Icons.payment,
                  const Color(0xFF4285F4),
                  'googlepay',
                ),
                _buildPaymentOption(
                  'Paytm',
                  'assets/paytm_icon.png',
                  Icons.account_balance,
                  const Color(0xFF00BAF2),
                  'paytm',
                ),
                _buildPaymentOption(
                  'Card',
                  'assets/card_icon.png',
                  Icons.credit_card,
                  const Color(0xFF1976D2),
                  'card',
                ),
                _buildPaymentOptionWithChoose(
                  'Pay by any UPI app',
                  'assets/upi_icon.png',
                  Icons.qr_code,
                  const Color(0xFFFF9800),
                  'upi',
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Use Wallet Points section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Use Wallet Points',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                
                const SizedBox(height: 12),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        useWalletPoints = !useWalletPoints;
                      });
                    },
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: useWalletPoints ? const Color(0xFF1976D2) : Colors.grey[300]!,
                          width: useWalletPoints ? 2 : 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [

                          // Text('hhhh'),
                          // Dollar icon container
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFF9800).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child:Image.asset('assets/dollar.png')
                          ),
                          const SizedBox(width: 12),
                          const Expanded(
                            child: Text(
                              '₹100',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          // Radio button
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: useWalletPoints ? const Color(0xFF1976D2) : Colors.grey[400]!,
                                width: useWalletPoints ? 6 : 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Proceed button - Updated to show success popup
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: selectedPayment.isEmpty
                    ? null
                    : () => _showSuccessPopup(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedPayment.isEmpty
                      ? Colors.grey[300]
                      : const Color(0xFF1976D2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Proceed',
                  style: TextStyle(
                    color: selectedPayment.isEmpty
                        ? Colors.grey[600]
                        : Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),

          // Bottom padding for safe area
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildPaymentOption(String title, String iconPath, IconData fallbackIcon, Color iconColor, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedPayment = value;
          });
        },
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            border: Border.all(
              color: selectedPayment == value ? const Color(0xFF1976D2) : Colors.grey[300]!,
              width: selectedPayment == value ? 2 : 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              // Icon container
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: iconColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Icon(
                  fallbackIcon,
                  color: iconColor,
                  size: 18,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ),
              // Radio button
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: selectedPayment == value ? const Color(0xFF1976D2) : Colors.grey[400]!,
                    width: selectedPayment == value ? 6 : 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPaymentOptionWithChoose(String title, String iconPath, IconData fallbackIcon, Color iconColor, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedPayment = value;
          });
        },
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            border: Border.all(
              color: selectedPayment == value ? const Color(0xFF1976D2) : Colors.grey[300]!,
              width: selectedPayment == value ? 2 : 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              // Icon container
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: iconColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Icon(
                  fallbackIcon,
                  color: iconColor,
                  size: 18,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ),
              // Choose text
              const Text(
                'CHOOSE',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1976D2),
                ),
              ),
              const SizedBox(width: 12),
              // Radio button
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: selectedPayment == value ? const Color(0xFF1976D2) : Colors.grey[400]!,
                    width: selectedPayment == value ? 6 : 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}