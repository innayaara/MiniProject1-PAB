import 'package:flutter/material.dart';
import '../models/product_model.dart';

class FormPage extends StatefulWidget {
  final Product? product;
  final String pesan; // ⭐ tambahkan ini

  const FormPage({
    super.key,
    this.product,
    required this.pesan, // ⭐ tambahkan ini
  });

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController hargaController = TextEditingController();
  final TextEditingController stokController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.product != null) {
      namaController.text = widget.product!.nama;
      hargaController.text = widget.product!.harga;
      stokController.text = widget.product!.stok;
    }
  }

  void saveProduct() {
    if (namaController.text.isEmpty ||
        hargaController.text.isEmpty ||
        stokController.text.isEmpty) {
      return;
  }

  Product newProduct = Product(
    nama: namaController.text, 
    harga: hargaController.text, 
    stok: stokController.text,
    );

    Navigator.pop(context, newProduct);
}

@override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(widget.product == null ? "Tambah Produk" : "Edit Produk"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
          widget.pesan,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
  
          TextField(
            controller: namaController,
            decoration: const InputDecoration(
              labelText: "Nama Produk",
            ),
          ),
          TextField(
            controller: hargaController,
            decoration: const InputDecoration(
              labelText: "Harga",
            ),
          ),
          TextField(
            controller: stokController,
            decoration: const InputDecoration(
              labelText: "Stok",
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: saveProduct,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pinkAccent,
              foregroundColor: Colors.white,
            ),
            child: const Text("Simpan"),
          )
        ],
      ),
    ),
  );
}
}
