import 'package:backup_ticket/model/movie_ticket_model.dart';
import 'package:backup_ticket/provider/selltickets/sell_movie_ticket_provider.dart';
import 'package:backup_ticket/views/Nearby/nearby_ticket_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<MovieTicket> _filteredTickets = [];
  List<MovieTicket> _allTickets = [];
  bool _showFilters = false;

  // Filter variables
  String _selectedPriceRange = 'All';
  String _selectedGenre = 'All';
  String _selectedRating = 'All';
  DateTime? _selectedDate;

  final List<String> _priceRanges = ['All', '0-200', '201-500', '501-1000', '1000+'];
  final List<String> _genres = ['All', 'Action', 'Drama', 'Comedy', 'Thriller', 'Romance', 'Horror'];
  final List<String> _ratings = ['All', 'U', 'UA', 'A', '13+'];

  @override
  void initState() {
    super.initState();
    _loadTickets();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _loadTickets() {
    final provider = context.read<MovieTicketProvider>();
    if (provider.tickets.isEmpty) {
      provider.fetchAllTickets();
    }
    _allTickets = provider.tickets;
    _filteredTickets = _allTickets;
  }

  void _onSearchChanged() {
    _performSearch();
  }

  void _performSearch() {
    final query = _searchController.text.toLowerCase();
    final provider = context.read<MovieTicketProvider>();
    
    setState(() {
      _filteredTickets = provider.tickets.where((ticket) {
        final matchesSearch = query.isEmpty ||
            ticket.movieName.toLowerCase().contains(query) ||
            ticket.theatrePlace.toLowerCase().contains(query);

        final matchesPrice = _selectedPriceRange == 'All' || _checkPriceRange(ticket.pricePerTicket);
        final matchesDate = _selectedDate == null || _isSameDate(ticket.showDate, _selectedDate!);

        return matchesSearch && matchesPrice && matchesDate;
      }).toList();
    });
  }

  bool _checkPriceRange(double price) {
    switch (_selectedPriceRange) {
      case '0-200':
        return price >= 0 && price <= 200;
      case '201-500':
        return price > 200 && price <= 500;
      case '501-1000':
        return price > 500 && price <= 1000;
      case '1000+':
        return price > 1000;
      default:
        return true;
    }
  }

  bool _isSameDate(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
           date1.month == date2.month &&
           date1.day == date2.day;
  }

  void _clearFilters() {
    setState(() {
      _selectedPriceRange = 'All';
      _selectedGenre = 'All';
      _selectedRating = 'All';
      _selectedDate = null;
    });
    _performSearch();
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
      _performSearch();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Tickets',style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: const Color(0xFF1976D2),
        foregroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
      ),
      
      backgroundColor: const Color(0xFFF5F5F5),
      body: Column(
        children: [
          // Search Bar and Filter Button
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: TextField(
                      controller: _searchController,
                      decoration: const InputDecoration(
                        hintText: 'Search movies',
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _showFilters = !_showFilters;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: _showFilters ? const Color(0xFF1976D2) : Colors.grey[200],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      Icons.tune,
                      color: _showFilters ? Colors.white : Colors.grey[600],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Filter Section
          if (_showFilters)
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Price Range Filter
                  Row(
                    children: [
                      const Text('Price: ', style: TextStyle(fontWeight: FontWeight.w600)),
                      Expanded(
                        child: Wrap(
                          spacing: 8,
                          children: _priceRanges.map((range) {
                            return FilterChip(
                              label: Text(range),
                              selected: _selectedPriceRange == range,
                              onSelected: (selected) {
                                setState(() {
                                  _selectedPriceRange = range;
                                });
                                _performSearch();
                              },
                              selectedColor: const Color(0xFF1976D2).withOpacity(0.3),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Date Filter
                  Row(
                    children: [
                      const Text('Date: ', style: TextStyle(fontWeight: FontWeight.w600)),
                      Expanded(
                        child: GestureDetector(
                          onTap: _selectDate,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]!),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              _selectedDate != null 
                                  ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                                  : 'Select Date',
                              style: TextStyle(
                                color: _selectedDate != null ? Colors.black : Colors.grey[600],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Clear Filters Button
                  Row(
                    children: [
                      const Spacer(),
                      TextButton(
                        onPressed: _clearFilters,
                        child: const Text('Clear Filters'),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          // Search Results
          Expanded(
            child: Consumer<MovieTicketProvider>(
              builder: (context, provider, child) {
                if (provider.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (provider.error != null) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Error: ${provider.error}'),
                        ElevatedButton(
                          onPressed: () => provider.fetchAllTickets(),
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  );
                }

                if (_filteredTickets.isEmpty) {
                  return const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search_off, size: 64, color: Colors.grey),
                        SizedBox(height: 16),
                        Text(
                          'No tickets found',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Text(
                          'Try adjusting your search or filters',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                }

                return ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: _filteredTickets.length,
                  itemBuilder: (context, index) {
                    return _buildTicketCard(_filteredTickets[index]);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTicketCard(MovieTicket ticket) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NearbyTickets(),
            settings: RouteSettings(arguments: ticket),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Movie Poster
            Container(
              width: 60,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(6),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: ticket.ticketImageUrl != null && ticket.ticketImageUrl!.isNotEmpty
                    ? Image.network(
                        ticket.ticketImageUrl!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[300],
                            child: const Icon(Icons.movie, color: Colors.grey, size: 30),
                          );
                        },
                      )
                    : Container(
                        color: Colors.grey[300],
                        child: const Icon(Icons.movie, color: Colors.grey, size: 30),
                      ),
              ),
            ),
            const SizedBox(width: 12),

            // Movie Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ticket.movieName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${_formatDate(ticket.showDate)} ${ticket.showTime}',
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    ticket.theatrePlace,
                    style: const TextStyle(fontSize: 12, color: Color.fromARGB(255, 75, 75, 75)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.chair, size: 16, color: Colors.grey[600]),
                      const SizedBox(width: 4),
                      Text(
                        '${ticket.numberOfTickets} tickets',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Price
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '₹${ticket.pricePerTicket.toStringAsFixed(0)}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'per ticket',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return '${date.day} ${months[date.month - 1]}';
  }
}