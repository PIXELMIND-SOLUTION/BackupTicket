// import 'package:flutter/material.dart';

// class SellMovieTicket extends StatefulWidget {
//   const SellMovieTicket({super.key});

//   @override
//   State<SellMovieTicket> createState() => _SellBusTicketState();
// }

// class _SellBusTicketState extends State<SellMovieTicket> {
//   final _formKey = GlobalKey<FormState>();
//   bool _agreeToTerms = false;
//   String? _selectedGender;
//   String? _selectedTicketType;
//   String? _selectedTicketCount;
//   DateTime? _selectedDate;
//   TimeOfDay? _selectedTime;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: const Text(
//           'Sell Movie Tickets',
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 19,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//       ),

//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildTextField('Full Name', 'Tommy'),
//               const SizedBox(height: 16),
//               _buildTextField('Phone Number', '9987652349'),
//               const SizedBox(height: 16),
//               _buildTextField('E-Mail', 'tommy@gmail.com'),
//               const SizedBox(height: 16),
//               _buildDropdownField(
//                 'Gender',
//                 'Male',
//                 ['Male', 'Female', 'Other'],
//                 _selectedGender,
//                 (value) {
//                   setState(() {
//                     _selectedGender = value;
//                   });
//                 },
//               ),
//               const SizedBox(height: 16),
//               _buildTextField('Movie Name', 'Enter movie name'),
//               const SizedBox(height: 16),
//               _buildTextField('Theatre Place', 'Enter theatre place'),
//               const SizedBox(height: 16),
//               _buildDateField(
//                 'Show Date',
//                 _selectedDate != null
//                     ? '${_selectedDate!.day.toString().padLeft(2, '0')}/${_selectedDate!.month.toString().padLeft(2, '0')}/${_selectedDate!.year}'
//                     : '29/01/2024',
//               ),
//               const SizedBox(height: 16),
//               _buildTimeField(
//                 'Show Time',
//                 _selectedTime != null
//                     ? '${_selectedTime!.hour.toString().padLeft(2, '0')}:${_selectedTime!.minute.toString().padLeft(2, '0')}'
//                     : '',
//               ),
//               const SizedBox(height: 16),

//               _buildTextField('Price per Ticket', 'Enter price per ticket'),
//               const SizedBox(height: 16),
//               _buildDropdownField(
//                 'Ticket Type',
//                 'Select',
//                 ['Economy', 'Business', 'Premium', 'Luxury'],
//                 _selectedTicketType,
//                 (value) {
//                   setState(() {
//                     _selectedTicketType = value;
//                   });
//                 },
//               ),
//               const SizedBox(height: 16),
//               _buildDropdownField(
//                 'Number of Tickets',
//                 '1',
//                 ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
//                 _selectedTicketCount,
//                 (value) {
//                   setState(() {
//                     _selectedTicketCount = value;
//                   });
//                 },
//               ),
//               const SizedBox(height: 16),
//               Row(
//                 children: [
//                   Expanded(
//                     flex: 3,
//                     child: _buildTextField('Total Price', 'Enter total price'),
//                   ),
//                   const Expanded(flex: 2, child: SizedBox()),
//                 ],
//               ),
//               const SizedBox(height: 16),

//               _buildFileUploadField('Upload Ticket'),
//               const SizedBox(height: 24),
//               Row(
//                 children: [
//                   Checkbox(
//                     value: _agreeToTerms,
//                     onChanged: (value) {
//                       setState(() {
//                         _agreeToTerms = value ?? false;
//                       });
//                     },
//                     activeColor: Colors.blue,
//                   ),
//                   const Expanded(
//                     child: Text(
//                       'I agree to the terms and conditions',
//                       style: TextStyle(fontSize: 14, color: Colors.black87),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 24),
//               SizedBox(
//                 width: double.infinity,
//                 height: 48,
//                 child: ElevatedButton(
//                   onPressed: _agreeToTerms
//                       ? () {
//                           // Handle submit
//                         }
//                       : null,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xFF214194),
//                     disabledBackgroundColor: Colors.grey[300],
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     elevation: 0,
//                   ),
//                   child: const Text(
//                     'Submit',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(String label, String hint) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: const TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w500,
//             color: Colors.black87,
//           ),
//         ),
//         const SizedBox(height: 8),
//         TextFormField(
//           decoration: InputDecoration(
//             hintText: hint,
//             hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: const BorderSide(color: Colors.grey, width: 1),
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: const BorderSide(color: Colors.grey, width: 1),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: const BorderSide(color: Colors.blue, width: 1),
//             ),
//             contentPadding: const EdgeInsets.symmetric(
//               horizontal: 12,
//               vertical: 12,
//             ),
//             filled: true,
//             fillColor: Colors.white,
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildDropdownField(
//     String label,
//     String hint,
//     List<String> items,
//     String? selectedValue,
//     Function(String?) onChanged,
//   ) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: const TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w500,
//             color: Colors.black87,
//           ),
//         ),
//         const SizedBox(height: 8),
//         DropdownButtonFormField<String>(
//           value: selectedValue,
//           decoration: InputDecoration(
//             hintText: hint,
//             hintStyle: const TextStyle(color: Colors.black, fontSize: 14),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: const BorderSide(color: Colors.grey, width: 1),
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: const BorderSide(color: Colors.grey, width: 1),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: const BorderSide(color: Colors.blue, width: 1),
//             ),
//             contentPadding: const EdgeInsets.symmetric(
//               horizontal: 12,
//               vertical: 12,
//             ),
//             filled: true,
//             fillColor: Colors.white,
//           ),
//           items: items.map((String value) {
//             return DropdownMenuItem<String>(value: value, child: Text(value));
//           }).toList(),
//           onChanged: onChanged,
//           icon: const Icon(Icons.keyboard_arrow_down, color: Colors.black),
//         ),
//       ],
//     );
//   }

//   Widget _buildDateField(String label, String hint) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: const TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w500,
//             color: Colors.black87,
//           ),
//         ),
//         const SizedBox(height: 8),
//         TextFormField(
//           readOnly: true,
//           decoration: InputDecoration(
//             hintText: hint,
//             hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: const BorderSide(color: Colors.grey, width: 1),
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: const BorderSide(color: Colors.grey, width: 1),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: const BorderSide(color: Colors.blue, width: 1),
//             ),
//             contentPadding: const EdgeInsets.symmetric(
//               horizontal: 12,
//               vertical: 12,
//             ),
//             filled: true,
//             fillColor: Colors.white,
//             suffixIcon: const Icon(
//               Icons.calendar_today,
//               color: Colors.black,
//               size: 20,
//             ),
//           ),
//           onTap: () async {
//             final DateTime? picked = await showDatePicker(
//               context: context,
//               initialDate: _selectedDate ?? DateTime.now(),
//               firstDate: DateTime.now(),
//               lastDate: DateTime.now().add(const Duration(days: 365)),
//             );
//             if (picked != null && picked != _selectedDate) {
//               setState(() {
//                 _selectedDate = picked;
//               });
//             }
//           },
//         ),
//       ],
//     );
//   }

//   Widget _buildTimeField(String label, String displayTime) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: const TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w500,
//             color: Colors.black87,
//           ),
//         ),
//         const SizedBox(height: 8),
//         TextFormField(
//           readOnly: true,
//           controller: TextEditingController(text: displayTime),
//           decoration: InputDecoration(
//             hintText: displayTime.isEmpty ? 'Select time' : null,
//             hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: const BorderSide(color: Colors.grey, width: 1),
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: const BorderSide(color: Colors.grey, width: 1),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: const BorderSide(color: Colors.blue, width: 1),
//             ),
//             contentPadding: const EdgeInsets.symmetric(
//               horizontal: 12,
//               vertical: 12,
//             ),
//             filled: true,
//             fillColor: Colors.white,
//             suffixIcon: const Icon(
//               Icons.access_time,
//               color: Colors.black,
//               size: 20,
//             ),
//           ),
//           onTap: () async {
//             final TimeOfDay? picked = await showTimePicker(
//               context: context,
//               initialTime: _selectedTime ?? TimeOfDay.now(),
//             );
//             if (picked != null && picked != _selectedTime) {
//               setState(() {
//                 _selectedTime = picked;
//               });
//             }
//           },
//         ),
//       ],
//     );
//   }

//   Widget _buildFileUploadField(String label) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: const TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w500,
//             color: Colors.black87,
//           ),
//         ),
//         const SizedBox(height: 8),
//         Container(
//           width: double.infinity,
//           height: 120,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(12),
//             border: Border.all(color: const Color.fromARGB(255, 181, 181, 181)),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.2),
//                 spreadRadius: 1,
//                 blurRadius: 6,
//                 offset: const Offset(0, 2),
//               ),
//             ],
//           ),
//           child: InkWell(
//             onTap: () {
//               // Handle file upload
//             },
//             borderRadius: BorderRadius.circular(12),
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   CircleAvatar(
//                     radius: 16,
//                     backgroundColor: Color(0xFFF0F0F0),
//                     child: Icon(
//                       Icons.upload_file,
//                       color: Colors.grey,
//                       size: 20,
//                     ),
//                   ),
//                   SizedBox(height: 6),
//                   Text(
//                     'Choose File',
//                     style: TextStyle(color: Colors.grey, fontSize: 14),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }









import 'dart:io';
import 'package:backup_ticket/model/movie_ticket_model.dart';
import 'package:backup_ticket/provider/selltickets/sell_movie_ticket_provider.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class SellMovieTicket extends StatefulWidget {
  const SellMovieTicket({super.key});

  @override
  State<SellMovieTicket> createState() => _SellMovieTicketState();
}

class _SellMovieTicketState extends State<SellMovieTicket> {
  final _formKey = GlobalKey<FormState>();
  
  // Controllers for form fields
  final _fullNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _movieNameController = TextEditingController();
  final _theatrePlaceController = TextEditingController();
  final _pricePerTicketController = TextEditingController();
  final _totalPriceController = TextEditingController();

  // Form state variables
  bool _agreeToTerms = false;
  String? _selectedGender;
  String? _selectedTicketType;
  String? _selectedTicketCount = '1';
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  XFile? _selectedImage;
  
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    // Add listener to calculate total price automatically
    _pricePerTicketController.addListener(_calculateTotalPrice);
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _movieNameController.dispose();
    _theatrePlaceController.dispose();
    _pricePerTicketController.dispose();
    _totalPriceController.dispose();
    super.dispose();
  }

  void _calculateTotalPrice() {
    if (_pricePerTicketController.text.isNotEmpty && _selectedTicketCount != null) {
      double pricePerTicket = double.tryParse(_pricePerTicketController.text) ?? 0;
      int ticketCount = int.tryParse(_selectedTicketCount!) ?? 1;
      double totalPrice = pricePerTicket * ticketCount;
      _totalPriceController.text = totalPrice.toStringAsFixed(2);
    }
  }

  Future<void> _pickImage() async {
    try {
      final XFile? image = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 1800,
        maxHeight: 1800,
        imageQuality: 85,
      );
      if (image != null) {
        setState(() {
          _selectedImage = image;
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error picking image: $e')),
      );
    }
  }

  Future<void> _submitForm() async {
    if (!_formKey.currentState!.validate()) return;
    if (!_agreeToTerms) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please agree to terms and conditions')),
      );
      return;
    }

    if (_selectedDate == null || _selectedTime == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select show date and time')),
      );
      return;
    }

    try {
      final provider = Provider.of<MovieTicketProvider>(context, listen: false);
      
      // Create MovieTicket object
      final ticket = MovieTicket(
        fullName: _fullNameController.text.trim(),
        phoneNumber: _phoneController.text.trim(),
        email: _emailController.text.trim(),
        gender: _selectedGender ?? '',
        movieName: _movieNameController.text.trim(),
        theatrePlace: _theatrePlaceController.text.trim(),
        showDate: _selectedDate!,
        showTime: '${_selectedTime!.hour.toString().padLeft(2, '0')}:${_selectedTime!.minute.toString().padLeft(2, '0')}',
        pricePerTicket: double.tryParse(_pricePerTicketController.text) ?? 0,
        ticketType: _selectedTicketType ?? '',
        numberOfTickets: int.tryParse(_selectedTicketCount!) ?? 1,
        totalPrice: double.tryParse(_totalPriceController.text) ?? 0,
        agreeToTerms: _agreeToTerms,
        createdAt: DateTime.now(),
      );

      // Show loading dialog
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
      );

      // Submit to Firebase
      final ticketId = await provider.createMovieTicket(ticket, imageFile: _selectedImage);

      Navigator.pop(context); // Close loading dialog

      if (ticketId != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Movie ticket submitted successfully!'),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.pop(context); // Go back to previous screen
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: ${provider.error ?? 'Unknown error occurred'}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      Navigator.pop(context); // Close loading dialog
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error submitting ticket: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Sell Movie Tickets',
          style: TextStyle(
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Consumer<MovieTicketProvider>(
        builder: (context, provider, child) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTextField('Full Name', 'Enter your full name', _fullNameController, required: true),
                  const SizedBox(height: 16),
                  _buildTextField('Phone Number', 'Enter phone number', _phoneController, required: true),
                  const SizedBox(height: 16),
                  _buildTextField('E-Mail', 'Enter email address', _emailController, required: true),
                  const SizedBox(height: 16),
                  _buildDropdownField(
                    'Gender',
                    'Select Gender',
                    ['Male', 'Female', 'Other'],
                    _selectedGender,
                    (value) {
                      setState(() {
                        _selectedGender = value;
                      });
                    },
                  ),
                  const SizedBox(height: 16),
                  _buildTextField('Movie Name', 'Enter movie name', _movieNameController, required: true),
                  const SizedBox(height: 16),
                  _buildTextField('Theatre Place', 'Enter theatre name/place', _theatrePlaceController, required: true),
                  const SizedBox(height: 16),
                  _buildDateField(
                    'Show Date',
                    _selectedDate != null
                        ? '${_selectedDate!.day.toString().padLeft(2, '0')}/${_selectedDate!.month.toString().padLeft(2, '0')}/${_selectedDate!.year}'
                        : 'Select show date',
                  ),
                  const SizedBox(height: 16),
                  _buildTimeField(
                    'Show Time',
                    _selectedTime != null
                        ? '${_selectedTime!.hour.toString().padLeft(2, '0')}:${_selectedTime!.minute.toString().padLeft(2, '0')}'
                        : '',
                  ),
                  const SizedBox(height: 16),
                  _buildTextField('Price per Ticket', 'Enter price per ticket', _pricePerTicketController, 
                    required: true, isNumber: true),
                  const SizedBox(height: 16),
                  _buildDropdownField(
                    'Ticket Type',
                    'Select ticket type',
                    ['Economy', 'Business', 'Premium', 'Luxury'],
                    _selectedTicketType,
                    (value) {
                      setState(() {
                        _selectedTicketType = value;
                      });
                    },
                  ),
                  const SizedBox(height: 16),
                  _buildDropdownField(
                    'Number of Tickets',
                    '1',
                    ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
                    _selectedTicketCount,
                    (value) {
                      setState(() {
                        _selectedTicketCount = value;
                        _calculateTotalPrice();
                      });
                    },
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: _buildTextField('Total Price', 'Total price', _totalPriceController, 
                          readOnly: true),
                      ),
                      const Expanded(flex: 2, child: SizedBox()),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildFileUploadField('Upload Ticket'),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Checkbox(
                        value: _agreeToTerms,
                        onChanged: (value) {
                          setState(() {
                            _agreeToTerms = value ?? false;
                          });
                        },
                        activeColor: Colors.blue,
                      ),
                      const Expanded(
                        child: Text(
                          'I agree to the terms and conditions',
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: _agreeToTerms && !provider.isLoading ? _submitForm : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF214194),
                        disabledBackgroundColor: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 0,
                      ),
                      child: provider.isLoading
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                              ),
                            )
                          : const Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTextField(String label, String hint, TextEditingController controller, 
      {bool required = false, bool isNumber = false, bool readOnly = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          readOnly: readOnly,
          keyboardType: isNumber ? TextInputType.number : TextInputType.text,
          validator: required
              ? (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'This field is required';
                  }
                  if (isNumber && double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                }
              : null,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.grey, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.grey, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.blue, width: 1),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            filled: true,
            fillColor: readOnly ? Colors.grey[100] : Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildDropdownField(
    String label,
    String hint,
    List<String> items,
    String? selectedValue,
    Function(String?) onChanged,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: selectedValue,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.grey, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.grey, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.blue, width: 1),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            filled: true,
            fillColor: Colors.white,
          ),
          items: items.map((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
          onChanged: onChanged,
          icon: const Icon(Icons.keyboard_arrow_down, color: Colors.black),
        ),
      ],
    );
  }

  Widget _buildDateField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          readOnly: true,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.grey, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.grey, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.blue, width: 1),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            filled: true,
            fillColor: Colors.white,
            suffixIcon: const Icon(
              Icons.calendar_today,
              color: Colors.black,
              size: 20,
            ),
          ),
          onTap: () async {
            final DateTime? picked = await showDatePicker(
              context: context,
              initialDate: _selectedDate ?? DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 365)),
            );
            if (picked != null && picked != _selectedDate) {
              setState(() {
                _selectedDate = picked;
              });
            }
          },
        ),
      ],
    );
  }

  Widget _buildTimeField(String label, String displayTime) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          readOnly: true,
          controller: TextEditingController(text: displayTime),
          decoration: InputDecoration(
            hintText: displayTime.isEmpty ? 'Select time' : null,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.grey, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.grey, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.blue, width: 1),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            filled: true,
            fillColor: Colors.white,
            suffixIcon: const Icon(
              Icons.access_time,
              color: Colors.black,
              size: 20,
            ),
          ),
          onTap: () async {
            final TimeOfDay? picked = await showTimePicker(
              context: context,
              initialTime: _selectedTime ?? TimeOfDay.now(),
            );
            if (picked != null && picked != _selectedTime) {
              setState(() {
                _selectedTime = picked;
              });
            }
          },
        ),
      ],
    );
  }

  Widget _buildFileUploadField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color.fromARGB(255, 181, 181, 181)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 6,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: InkWell(
            onTap: _pickImage,
            borderRadius: BorderRadius.circular(12),
            child: _selectedImage != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.file(
                      File(_selectedImage!.path),
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 120,
                    ),
                  )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Color(0xFFF0F0F0),
                          child: Icon(
                            Icons.upload_file,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Choose File',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}