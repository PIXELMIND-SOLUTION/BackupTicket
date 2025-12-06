import 'package:flutter/material.dart';

class FilterBottomSheet extends StatefulWidget {
  final String selectedPriceRange;
  final String selectedGenre;
  final String selectedRating;
  final DateTime? selectedDate;
  final Function(String, String, String, DateTime?) onApplyFilters;

  const FilterBottomSheet({
    Key? key,
    required this.selectedPriceRange,
    required this.selectedGenre,
    required this.selectedRating,
    this.selectedDate,
    required this.onApplyFilters,
  }) : super(key: key);

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  late String _selectedPriceRange;
  late String _selectedGenre;
  late String _selectedRating;
  DateTime? _selectedDate;

  final List<String> _priceRanges = ['All', '0-200', '201-500', '501-1000', '1000+'];
  final List<String> _genres = ['All', 'Action', 'Drama', 'Comedy', 'Thriller', 'Romance', 'Horror'];
  final List<String> _ratings = ['All', 'U', 'UA', 'A', '13+'];

  @override
  void initState() {
    super.initState();
    _selectedPriceRange = widget.selectedPriceRange;
    _selectedGenre = widget.selectedGenre;
    _selectedRating = widget.selectedRating;
    _selectedDate = widget.selectedDate;
  }

  void _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 30)),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _clearFilters() {
    setState(() {
      _selectedPriceRange = 'All';
      _selectedGenre = 'All';
      _selectedRating = 'All';
      _selectedDate = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          // Handle
          Container(
            margin: const EdgeInsets.only(top: 8),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          // Header
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Filter Tickets',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: _clearFilters,
                  child: const Text('Clear All'),
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Price Range Section
                  _buildSectionTitle('Price Range'),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: _priceRanges.map((range) {
                      return _buildFilterChip(
                        range,
                        _selectedPriceRange == range,
                        () {
                          setState(() {
                            _selectedPriceRange = range;
                          });
                        },
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 24),

                  // Genre Section
                  _buildSectionTitle('Genre'),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: _genres.map((genre) {
                      return _buildFilterChip(
                        genre,
                        _selectedGenre == genre,
                        () {
                          setState(() {
                            _selectedGenre = genre;
                          });
                        },
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 24),

                  // Rating Section
                  _buildSectionTitle('Rating'),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: _ratings.map((rating) {
                      return _buildFilterChip(
                        rating,
                        _selectedRating == rating,
                        () {
                          setState(() {
                            _selectedRating = rating;
                          });
                        },
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 24),

                  // Date Section
                  _buildSectionTitle('Show Date'),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: _selectDate,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _selectedDate != null 
                                ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                                : 'Select Date',
                            style: TextStyle(
                              fontSize: 16,
                              color: _selectedDate != null ? Colors.black : Colors.grey[600],
                            ),
                          ),
                          Icon(Icons.calendar_today, color: Colors.grey[600], size: 20),
                        ],
                      ),
                    ),
                  ),

                  if (_selectedDate != null) ...[
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedDate = null;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.red[50],
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Text(
                          'Clear Date',
                          style: TextStyle(color: Colors.red, fontSize: 12),
                        ),
                      ),
                    ),
                  ],

                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),

          // Apply Button
          Container(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  widget.onApplyFilters(
                    _selectedPriceRange,
                    _selectedGenre,
                    _selectedRating,
                    _selectedDate,
                  );
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1976D2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Apply Filters',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildFilterChip(String label, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF1976D2) : Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? const Color(0xFF1976D2) : Colors.grey[300]!,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey[700],
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
          ),
        ),
      ),
    );
  }
}