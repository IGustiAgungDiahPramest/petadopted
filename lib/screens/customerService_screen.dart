// ignore_for_file: prefer_const_constructors, use_super_parameters, library_private_types_in_public_api, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/components/bottom_up_transition.dart';
import 'package:my_app/dto/Customer.dart';
import 'package:my_app/dto/datas.dart';
import 'package:my_app/endpoints/endpoints.dart';
import 'package:my_app/screens/formcs_screen.dart';
import 'package:my_app/screens/update_screen.dart';
import 'package:my_app/services/datacs_service.dart';

class CustomerServiceScreen extends StatefulWidget {
  const CustomerServiceScreen({Key? key}) : super(key: key);

  @override
  _CustomerServiceScreenState createState() => _CustomerServiceScreenState();
}

class _CustomerServiceScreenState extends State<CustomerServiceScreen> {
  Future<List<CustomerServis>>? _CustomerService;


  @override
  void initState() {
    super.initState();
    _CustomerService = DataService.fetchCustomerService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Problem'),
        leading: IconButton(
          icon: const Icon(Icons
              .arrow_back), // Customize icon (optional)// Customize color (optional)
          onPressed: () {
            // Your custom back button functionality here
            Navigator.pushReplacementNamed(
                context, '/Home_Screen'); // Default back button behavior
            // You can add additional actions here (e.g., show confirmation dialog)
          },
        ),
      ),
      body: FutureBuilder<List<CustomerServis>>(
        future: _CustomerService,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final item = data[index];
                return ListTile(
                  title: item.image != null
                      ? Row(
                          children: [
                            Image.network(
                              fit: BoxFit.fitWidth,
                              width: 350,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons
                                      .error),
                              '${Endpoints.baseURLLive}/public/${item.image!}'
                            ),
                          ],
                        )
                      : null,
                  subtitle: Column(children: [
                    Text('Title : ${item.titleIssues}',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 36, 31, 31),
                          fontWeight: FontWeight.normal,
                        )),
                        Text('Deskripsi : ${item.decriptionIssues}',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 36, 31, 31),
                          fontWeight: FontWeight.normal,
                        )),
                        Text('NIM : ${item.nim}',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 36, 31, 31),
                          fontWeight: FontWeight.normal,
                        )),
                        RatingBar(
                      minRating: 1,
                      maxRating: 5,ignoreGestures: true,
                      allowHalfRating: false,
                      initialRating: item.rating!.toDouble(),
                      ratingWidget: RatingWidget(
                        full: const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        half: const Icon(
                          Icons.star_half,
                          color: Colors.amber,
                        ),
                        empty: const Icon(
                          Icons.star_border,
                          color: Colors.amber,
                        ),
                      ),
                      onRatingUpdate: (double ratings) {},
                    ),
                    const Divider(),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            _delete(item.id.toString());
                          },
                          icon: Icon(Icons.delete),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => EditScreen(issues: item,)));
                          },
                          icon: Icon(Icons.edit),
                        ),
                      ],
                    )
                  ]),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(4, 73, 153, 1),
        tooltip: 'Increment',
        onPressed: () {
          // Navigator.pushNamed(context, '/form-screen');
          // BottomUpRoute(page: const FormScreen());
          Navigator.push(context, BottomUpRoute(page: const FormcsScreen()));
        },
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }

  void _delete(String id) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Konfirmasi"),
        content: Text("Apakah Anda yakin ingin menghapus postingan ini?"),
        actions: [
          TextButton(
            onPressed: () async {
              try {
                await DataService.deleteCustomerService(id);
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.red,
                    content: Text('Data berhasil dihapus!'),
                    duration: Duration(seconds: 2),
                  ),
                );
                setState(() {
                  _CustomerService = DataService.fetchCustomerService();
                });
              } catch (error) {
                debugPrint('Gagal menghapus data: $error');
              }
            },

            // sesuai in sama yang di api
            child: Text('Ya'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Tidak'),
          ),
        ],
      ),
    );
  }
}