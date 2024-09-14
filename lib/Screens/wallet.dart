import 'package:flutter/material.dart';
import 'package:myapp/Screens/bottomnavbar.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Current Balance Section
              const Card(
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Current Balance',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '\$100.00', // Replace with actual balance
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Transaction History Section
              const Text(
                'Transaction History',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5, // Replace with actual transaction count
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.monetization_on),
                    title: Text('Transaction #${index + 1}'),
                    subtitle: const Text('Details of the transaction'),
                    trailing: Text(
                      index % 2 == 0
                          ? '+\$20.00'
                          : '-\$10.00', // Replace with actual transaction amount
                      style: TextStyle(
                        color: index % 2 == 0 ? Colors.green : Colors.red,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 24),
              // Add/Withdraw Funds Section
              const Text(
                'Manage Funds',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.add_circle),
                title: const Text('Add Funds'),
                onTap: () {
                  // Handle add funds
                },
              ),
              ListTile(
                leading: const Icon(Icons.remove_circle),
                title: const Text('Withdraw Funds'),
                onTap: () {
                  // Handle withdraw funds
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Bottomnavbar(index: 1,),
    );
  }
}
