import 'dart:io';
import 'package:backup_ticket/provider/selltickets/sell_bus_ticket_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:backup_ticket/model/bus_ticket_model.dart';

class SellBusTicket extends StatefulWidget {
  const SellBusTicket({super.key});

  @override
  State<SellBusTicket> createState() => _SellBusTicketState();
}

class _SellBusTicketState extends State<SellBusTicket> {
  final _formKey = GlobalKey<FormState>();
  
  // Controllers for form fields
  final _fullNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _busNameController = TextEditingController();
  final _priceController = TextEditingController();
  final _totalPriceController = TextEditingController();
  final _pickupPointController = TextEditingController();
  final _dropPointController = TextEditingController();
  
  // Form state variables
  bool _agreeToTerms = false;
  String? _selectedGender;
  String? _selectedTicketType;
  String? _selectedTicketCount;
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  @override
  void initState() {
    super.initState();
    // Set default values
    _fullNameController.text = 'Tommy';
    _phoneController.text = '9987652349';
    _emailController.text = 'tommy@gmail.com';
    _selectedGender = 'Male';
    _selectedTicketCount = '1';
    
    // Add listener to calculate total price
    _priceController.addListener(_calculateTotalPrice);
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _busNameController.dispose();
    _priceController.dispose();
    _totalPriceController.dispose();
    _pickupPointController.dispose();
    _dropPointController.dispose();
    super.dispose();
  }

  void _calculateTotalPrice() {
    if (_priceController.text.isNotEmpty && _selectedTicketCount != null) {
      final price = double.tryParse(_priceController.text) ?? 0;
      final count = int.tryParse(_selectedTicketCount!) ?? 1;
      final total = price * count;
      _totalPriceController.text = total.toString();
    }
  }

  Future<void> _handleImagePicker(BusTicketProvider provider) async {
    try {
      showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          height: 120,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text('Select Image Source', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      provider.pickImage(source: ImageSource.camera);
                    },
                    child: const Column(
                      children: [
                        Icon(Icons.camera_alt, size: 30),
                        Text('Camera'),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      provider.pickImage(source: ImageSource.gallery);
                    },
                    child: const Column(
                      children: [
                        Icon(Icons.photo_library, size: 30),
                        Text('Gallery'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    } catch (e) {
      _showSnackBar('Error picking image: $e', isError: true);
    }
  }

  Future<void> _handleSubmit() async {
    if (!_formKey.currentState!.validate()) {
      _showSnackBar('Please fill all required fields', isError: true);
      return;
    }

    if (!_agreeToTerms) {
      _showSnackBar('Please agree to terms and conditions', isError: true);
      return;
    }

    if (_selectedDate == null || _selectedTime == null) {
      _showSnackBar('Please select date and time', isError: true);
      return;
    }

    final provider = Provider.of<BusTicketProvider>(context, listen: false);

    try {
      // Create DateTime for journey
      final journeyDateTime = DateTime(
        _selectedDate!.year,
        _selectedDate!.month,
        _selectedDate!.day,
        _selectedTime!.hour,
        _selectedTime!.minute,
      );

      // Create BusTicket object
      final ticket = BusTicket(
        id: '', // Will be set by Firestore
        fullName: _fullNameController.text.trim(),
        phoneNumber: _phoneController.text.trim(),
        email: _emailController.text.trim(),
        gender: _selectedGender!,
        busName: _busNameController.text.trim(),
        dateOfJourney: journeyDateTime,
        boardingTime: '${_selectedTime!.hour.toString().padLeft(2, '0')}:${_selectedTime!.minute.toString().padLeft(2, '0')}',
        ticketType: _selectedTicketType!,
        numberOfTickets: int.parse(_selectedTicketCount!),
        pricePerTicket: double.parse(_priceController.text),
        totalPrice: double.parse(_totalPriceController.text),
        pickupPoint: _pickupPointController.text.trim(),
        dropPoint: _dropPointController.text.trim(),
        status: 'active',
        sellerId: '', // Will be set by provider
        createdAt: DateTime.now(),
        ticketImageUrl: null, // Will be set if image is uploaded
      );

      // Get image file if selected
      File? imageFile;
      if (provider.selectedImagePath != null) {
        imageFile = File(provider.selectedImagePath!);
      }

      // Add ticket
      final success = await provider.addBusTicket(ticket, imageFile: imageFile);

      if (success) {
        _showSnackBar('Ticket added successfully!');
        _resetForm();
        // Optionally navigate back or to another screen
        Navigator.pop(context);
      } else {
        _showSnackBar('Failed to add ticket', isError: true);
      }
    } catch (e) {
      _showSnackBar('Error: $e', isError: true);
    }
  }

  void _resetForm() {
    _formKey.currentState?.reset();
    _fullNameController.clear();
    _phoneController.clear();
    _emailController.clear();
    _busNameController.clear();
    _priceController.clear();
    _totalPriceController.clear();
    _pickupPointController.clear();
    _dropPointController.clear();
    
    setState(() {
      _agreeToTerms = false;
      _selectedGender = null;
      _selectedTicketType = null;
      _selectedTicketCount = null;
      _selectedDate = null;
      _selectedTime = null;
    });

    final provider = Provider.of<BusTicketProvider>(context, listen: false);
    provider.clearSelectedImage();
  }

  void _showSnackBar(String message, {bool isError = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? Colors.red : Colors.green,
        duration: const Duration(seconds: 3),
      ),
    );
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
          'Sell Bus Tickets',
          style: TextStyle(
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      
      body: Consumer<BusTicketProvider>(
        builder: (context, provider, child) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTextField('Full Name', 'Tommy', _fullNameController, required: true),
                  const SizedBox(height: 16),
                  _buildTextField('Phone Number', '9987652349', _phoneController, required: true, keyboardType: TextInputType.phone),
                  const SizedBox(height: 16),
                  _buildTextField('E-Mail', 'tommy@gmail.com', _emailController, required: true, keyboardType: TextInputType.emailAddress),
                  const SizedBox(height: 16),
                  _buildDropdownField('Gender', 'Male', ['Male', 'Female', 'Other'], _selectedGender, (value) {
                    setState(() {
                      _selectedGender = value;
                    });
                  }, required: true),
                  const SizedBox(height: 16),
                  _buildTextField('Bus Name', 'Enter bus name', _busNameController, required: true),
                  const SizedBox(height: 16),
                  _buildDateField('Date of Journey', _selectedDate != null 
                    ? '${_selectedDate!.day.toString().padLeft(2, '0')}/${_selectedDate!.month.toString().padLeft(2, '0')}/${_selectedDate!.year}'
                    : '29/01/2024'),
                  const SizedBox(height: 16),
                  _buildTimeField('Boarding Time', _selectedTime != null 
                    ? '${_selectedTime!.hour.toString().padLeft(2, '0')}:${_selectedTime!.minute.toString().padLeft(2, '0')}'
                    : ''),
                  const SizedBox(height: 16),
                  _buildDropdownField('Ticket Type', 'Select', ['Economy', 'Business', 'Premium', 'Luxury'], _selectedTicketType, (value) {
                    setState(() {
                      _selectedTicketType = value;
                    });
                  }, required: true),
                  const SizedBox(height: 16),
                  _buildDropdownField('Number of Tickets', '1', ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'], _selectedTicketCount, (value) {
                    setState(() {
                      _selectedTicketCount = value;
                      _calculateTotalPrice();
                    });
                  }, required: true),
                  const SizedBox(height: 16),
                  _buildTextField('Price per Ticket', 'Enter price per ticket', _priceController, required: true, keyboardType: TextInputType.number),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: _buildTextField('Total Price', 'Auto-calculated', _totalPriceController, readOnly: true),
                      ),
                      const Expanded(flex: 2, child: SizedBox()),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildTextField('Pickup Point', 'Enter pickup point', _pickupPointController, required: true),
                  const SizedBox(height: 16),
                  _buildTextField('Drop Point', 'Enter drop point', _dropPointController, required: true),
                  const SizedBox(height: 16),
                  _buildFileUploadField('Upload Ticket', provider),
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
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: (_agreeToTerms && !provider.isLoading) ? _handleSubmit : null,
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
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                strokeWidth: 2,
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
      {bool required = false, bool readOnly = false, TextInputType? keyboardType}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          required ? '$label *' : label,
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
          keyboardType: keyboardType,
          validator: required ? (value) {
            if (value == null || value.trim().isEmpty) {
              return '$label is required';
            }
            if (label == 'E-Mail' && !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
              return 'Please enter a valid email';
            }
            if (label == 'Phone Number' && value.length < 10) {
              return 'Please enter a valid phone number';
            }
            return null;
          } : null,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
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
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red, width: 1),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red, width: 1),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            filled: true,
            fillColor: readOnly ? Colors.grey[100] : Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildDropdownField(String label, String hint, List<String> items, String? selectedValue, Function(String?) onChanged, {bool required = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          required ? '$label *' : label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: selectedValue,
          validator: required ? (value) {
            if (value == null || value.isEmpty) {
              return '$label is required';
            }
            return null;
          } : null,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
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
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red, width: 1),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red, width: 1),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            filled: true,
            fillColor: Colors.white,
          ),
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
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
          '$label *',
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          readOnly: true,
          controller: TextEditingController(
            text: _selectedDate != null 
              ? '${_selectedDate!.day.toString().padLeft(2, '0')}/${_selectedDate!.month.toString().padLeft(2, '0')}/${_selectedDate!.year}'
              : ''
          ),
          validator: (value) {
            if (_selectedDate == null) {
              return 'Date is required';
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
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
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red, width: 1),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red, width: 1),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            filled: true,
            fillColor: Colors.white,
            suffixIcon: const Icon(Icons.calendar_today, color: Colors.black, size: 20),
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
          '$label *',
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
          validator: (value) {
            if (_selectedTime == null) {
              return 'Time is required';
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: displayTime.isEmpty ? 'Select time' : null,
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
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
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red, width: 1),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red, width: 1),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            filled: true,
            fillColor: Colors.white,
            suffixIcon: const Icon(Icons.access_time, color: Colors.black, size: 20),
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

  Widget _buildFileUploadField(String label, BusTicketProvider provider) {
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
            onTap: () => _handleImagePicker(provider),
            borderRadius: BorderRadius.circular(12),
            child: provider.selectedImagePath != null
                ? Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.file(
                          File(provider.selectedImagePath!),
                          width: double.infinity,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: GestureDetector(
                          onTap: provider.clearSelectedImage,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Color(0xFFF0F0F0),
                          child: Icon(Icons.upload_file, color: Colors.grey, size: 20),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Choose File',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
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