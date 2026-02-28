import 'package:flutter/material.dart';
import '../models/product_model.dart';
import 'form_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> products = [];

  void deleteProduct(int index) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      title: const Text("Konfirmasi"),
      content: const Text("Yakin ingin menghapus produk ini?"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context); // tutup dialog
          },
          child: const Text("Batal"),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white
          ),
          onPressed: () {
            setState(() {
              products.removeAt(index);
            });

            Navigator.pop(context); // tutup dialog

            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Produk berhasil dihapus."),
                backgroundColor: Colors.pinkAccent,
                behavior: SnackBarBehavior.floating,
              ),
            );
          },
          child: const Text("Hapus"),
        ),
      ],
    ),
  );
}

  void navigateToForm({Product? product, int? index}) async {
    final Product? result = await Navigator.push<Product>(
      context,
      MaterialPageRoute(
        builder: (context) => FormPage(
          product: product,
          pesan: product == null
              ? "Silahkan tambahkan produk baru"
              : "Silahkan edit produk",
        ),
      ),
    );

    if (result != null) {
      setState(() {
        if (index != null) {
          products[index] = result;
        } else {
          products.add(result);
        }
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.pinkAccent,
          content: Text(
            "Produk berhasil disimpan.",
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nayo Boutique"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        onPressed: () {
          navigateToForm();
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          ),
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            child: Image.asset(
              "assets/nayoboutique.jpg",
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "Daftar Produk Nayo Boutique",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),

          // WRAP FLEXIBLE LAYOUT
          Expanded(
            child: products.isEmpty
                ? const Center(
                    child: Text("Belum ada produk 🛍️"),
                  )
                : SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: products.asMap().entries.map((entry) {
                        int index = entry.key;
                        Product product = entry.value;

                        return SizedBox(
                          width: 180,
                          child: Card(
                            elevation: 6,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.nama,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "Harga: Rp ${product.harga}",
                                    style: const TextStyle(
                                      color: Colors.pinkAccent,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text("Stok: ${product.stok}"),
                                  const SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: const Icon(
                                          Icons.edit,
                                          color: Colors.blue,
                                        ),
                                        onPressed: () {
                                          navigateToForm(
                                            product: product,
                                            index: index,
                                          );
                                        },
                                      ),
                                      IconButton(
                                        icon: const Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                        ),
                                        onPressed: () {
                                          deleteProduct(index);
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}