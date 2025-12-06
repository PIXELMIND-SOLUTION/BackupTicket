import 'package:backup_ticket/model/movie_ticket_model.dart';
import 'package:backup_ticket/widget/ticket_painter_widget.dart';
import 'package:flutter/material.dart';

class QrCodeDetailScreen extends StatelessWidget {
  final MovieTicket ticket;
  final String paymentMethod;
  final String? paymentId;

  const QrCodeDetailScreen({
    super.key,
    required this.ticket,
    required this.paymentMethod,
    this.paymentId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF1976D2), Color(0xFF0D47A1)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Left side (location)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.send, color: Colors.white, size: 18),
                            SizedBox(width: 5),
                            Text(
                              "Hyderabad, Telangana..",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                        SizedBox(height: 2),
                        const Text(
                          "       Hyderabad, Telangana, India",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),

                    // Right side (notification)
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.notifications_none,
                        color: Colors.black87,
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Back button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Transform.translate(
                          offset: Offset(4, 0),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black87,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Success message
            // Container(
            //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //   padding: const EdgeInsets.all(16),
            //   decoration: BoxDecoration(
            //     color: Colors.green[50],
            //     borderRadius: BorderRadius.circular(12),
            //     border: Border.all(color: Colors.green[200]!),
            //   ),
            //   child: Row(
            //     children: [
            //       Icon(Icons.check_circle, color: Colors.green[600], size: 24),
            //       SizedBox(width: 12),
            //       Expanded(
            //         child: Text(
            //           'Payment Successful! Your ticket is confirmed.',
            //           style: TextStyle(
            //             color: Colors.green[700],
            //             fontSize: 16,
            //             fontWeight: FontWeight.w500,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            // Movie ticket card with QR code
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: CustomPaint(
                      painter: TicketPainter(),
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            const SizedBox(height: 10),

                            // Movie poster image
                            Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child:
                                        (ticket.ticketImageUrl != null &&
                                            ticket.ticketImageUrl!.isNotEmpty)
                                        ? Image.network(
                                            ticket.ticketImageUrl!,
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                            height: double.infinity,
                                            loadingBuilder: (context, child, loadingProgress) {
                                              if (loadingProgress == null)
                                                return child;
                                              return Container(
                                                color: Colors.grey[300],
                                                child: Center(
                                                  child: CircularProgressIndicator(
                                                    value:
                                                        loadingProgress
                                                                .expectedTotalBytes !=
                                                            null
                                                        ? loadingProgress
                                                                  .cumulativeBytesLoaded /
                                                              loadingProgress
                                                                  .expectedTotalBytes!
                                                        : null,
                                                  ),
                                                ),
                                              );
                                            },
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                                  return Image.asset(
                                                    'assets/kubera.png',
                                                    fit: BoxFit.cover,
                                                    width: double.infinity,
                                                    height: double.infinity,
                                                    errorBuilder:
                                                        (
                                                          context,
                                                          error,
                                                          stackTrace,
                                                        ) {
                                                          return Container(
                                                            color: Colors
                                                                .grey[300],
                                                            child: const Icon(
                                                              Icons.movie,
                                                              size: 60,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          );
                                                        },
                                                  );
                                                },
                                          )
                                        : Image.asset(
                                            'assets/kubera.png',
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                            height: double.infinity,
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                                  return Container(
                                                    color: Colors.grey[300],
                                                    child: const Icon(
                                                      Icons.movie,
                                                      size: 60,
                                                      color: Colors.grey,
                                                    ),
                                                  );
                                                },
                                          ),
                                  ),
                                  // Gradient overlay
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.transparent,
                                          Colors.black.withOpacity(0.7),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 20),

                            // Movie title
                            Text(
                              ticket.movieName,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                              textAlign: TextAlign.center,
                            ),

                            const SizedBox(height: 20),

                            // Movie details
                            Column(
                              children: [
                                _buildDetailRow(
                                  'Movie name:',
                                  ticket.movieName,
                                ),
                                _buildDetailRow(
                                  'Time & Date:',
                                  '${ticket.showDate ?? ''} ${ticket.showTime ?? ''}',
                                ),
                                _buildDetailRow(
                                  'Location:',
                                  ticket.theatrePlace ?? 'N/A',
                                ),
                                SizedBox(height: 15),
                                _buildDetailRow(
                                  'Total Price:',
                                  '₹${ticket.totalPrice?.toString() ?? '0'}',
                                ),
                                _buildDetailRow(
                                  'Payment Method:',
                                  paymentMethod,
                                ),
                                if (paymentId != null)
                                  _buildDetailRow('Payment ID:', paymentId!),
                              ],
                            ),

                            const SizedBox(height: 20),

                            // Dotted line separator
                            CustomPaint(
                              painter: DottedLinePainter(),
                              child: Container(
                                height: 1,
                                width: double.infinity,
                              ),
                            ),

                            const SizedBox(height: 20),

                            // QR Code section
                            Column(
                              children: [
                                Text(
                                  'Scan QR Code at Theatre',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87,
                                  ),
                                ),

                                const SizedBox(height: 15),

                                // QR Code
                                Container(
                                  width: 180,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Colors.grey[300]!,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 8,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child:
                                        (ticket.qrCodeImageUrl != null &&
                                            ticket.qrCodeImageUrl!.isNotEmpty)
                                        ? GestureDetector(
                                            onTap: () => _showQRCodeFullScreen(
                                              context,
                                              ticket.qrCodeImageUrl!,
                                            ),
                                            child: Image.network(
                                              ticket.qrCodeImageUrl!,
                                              fit: BoxFit.contain,
                                              loadingBuilder: (context, child, loadingProgress) {
                                                if (loadingProgress == null)
                                                  return child;
                                                return Center(
                                                  child: CircularProgressIndicator(
                                                    value:
                                                        loadingProgress
                                                                .expectedTotalBytes !=
                                                            null
                                                        ? loadingProgress
                                                                  .cumulativeBytesLoaded /
                                                              loadingProgress
                                                                  .expectedTotalBytes!
                                                        : null,
                                                  ),
                                                );
                                              },
                                              errorBuilder:
                                                  (context, error, stackTrace) {
                                                    return Container(
                                                      color: Colors.grey[100],
                                                      child: const Icon(
                                                        Icons.qr_code,
                                                        size: 80,
                                                        color: Colors.grey,
                                                      ),
                                                    );
                                                  },
                                            ),
                                          )
                                        : Container(
                                            color: Colors.grey[100],
                                            child: const Icon(
                                              Icons.qr_code,
                                              size: 80,
                                              color: Colors.grey,
                                            ),
                                          ),
                                  ),
                                ),

                                const SizedBox(height: 10),

                                Text(
                                  'Tap to view full screen',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Action buttons
                  // Row(
                  //   children: [
                  //     // Download/Save button
                  //     Expanded(
                  //       child: Container(
                  //         height: 50,
                  //         child: ElevatedButton.icon(
                  //           onPressed: () {
                  //             // Implement download/save functionality
                  //             ScaffoldMessenger.of(context).showSnackBar(
                  //               SnackBar(
                  //                 content: Text('Ticket saved to your library'),
                  //                 backgroundColor: Colors.green,
                  //               ),
                  //             );
                  //           },
                  //           icon: Icon(Icons.download, color: Colors.white),
                  //           label: Text(
                  //             'Save Ticket',
                  //             style: TextStyle(
                  //               color: Colors.white,
                  //               fontWeight: FontWeight.w600,
                  //             ),
                  //           ),
                  //           style: ElevatedButton.styleFrom(
                  //             backgroundColor: Colors.green[600],
                  //             shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(12),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),

                  //     SizedBox(width: 12),

                  //     // Share button
                  //     Expanded(
                  //       child: Container(
                  //         height: 50,
                  //         child: ElevatedButton.icon(
                  //           onPressed: () {
                  //             // Implement share functionality
                  //             ScaffoldMessenger.of(context).showSnackBar(
                  //               SnackBar(
                  //                 content: Text('Sharing ticket details'),
                  //                 backgroundColor: Colors.blue,
                  //               ),
                  //             );
                  //           },
                  //           icon: Icon(Icons.share, color: Colors.white),
                  //           label: Text(
                  //             'Share',
                  //             style: TextStyle(
                  //               color: Colors.white,
                  //               fontWeight: FontWeight.w600,
                  //             ),
                  //           ),
                  //           style: ElevatedButton.styleFrom(
                  //             backgroundColor: Color(0xFF1976D2),
                  //             shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(12),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  const SizedBox(height: 20),

                  // Done button
                  Container(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate back to home or main screen
                        Navigator.of(
                          context,
                        ).popUntil((route) => route.isFirst);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 3,
                      ),
                      child: const Text(
                        'Done',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),
          Flexible(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }

  // Method to show QR code in full screen
  void _showQRCodeFullScreen(BuildContext context, String qrCodeUrl) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'QR Code',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey[300]!),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          qrCodeUrl,
                          fit: BoxFit.contain,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value:
                                    loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: Colors.grey[100],
                              child: const Icon(
                                Icons.qr_code,
                                size: 80,
                                color: Colors.grey,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 40,
                right: 20,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close, color: Colors.white, size: 30),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// Custom painter for dotted line (reused from your existing code)
class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1;

    const double dashWidth = 5;
    const double dashSpace = 3;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
