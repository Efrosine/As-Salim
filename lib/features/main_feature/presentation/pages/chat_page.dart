import 'package:assalim/features/Model/doctordata.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key, required this.doctor});

  final DoctorData doctor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5FAFC),
      appBar: AppBar(
        toolbarHeight: 109,
        automaticallyImplyLeading: true,
        flexibleSpace: Container(
          padding: const EdgeInsets.only(left: 45, top: 30),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(16), right: Radius.circular(16))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 33,
                  backgroundImage: AssetImage(doctor.image),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text("online", style: Theme.of(context).textTheme.titleSmall),
                ],
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          // Chat send
          Container(
            padding: const EdgeInsets.all(24),
            width: 230,
            height: 110,
            margin: const EdgeInsets.only(
              top: 24,
              left: 130,
              right: 24,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryContainer,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(0),
                bottomLeft: Radius.circular(16),
              ),
              border: Border.all(
                width: 1,
                color: Theme.of(context).colorScheme.outline,
              ),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.outline,
                  offset: const Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  'Assalamualaikum, Saya ingin izin konsultasi',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Expanded(
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child:
                            Text("12.00", style: Theme.of(context).textTheme.bodySmall)))
              ],
            ),
          ),

          // Chat arrive
          Container(
            padding: const EdgeInsets.all(24),
            width: 230,
            height: 120,
            margin: const EdgeInsets.only(
              top: 14,
              right: 106,
              left: 24,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.circular(0),
              ),
              border: Border.all(
                width: 1,
                color: Theme.of(context).colorScheme.outline,
              ),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.outline,
                  offset: const Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Waalaikumussalam wr.wb.",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  'Selamat datang! Ada yang bisa saya bantu?',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Expanded(
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child:
                            Text("12.01", style: Theme.of(context).textTheme.bodySmall)))
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 74,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          border: Border.all(width: 1, color: Theme.of(context).colorScheme.outline),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.outline,
              offset: const Offset(0, 4),
              blurRadius: 4,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              const SizedBox(width: 16),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Kirim Pesan',
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    border: InputBorder.none,
                  ),
                ),
              ),
              const CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xFFC4EFAB),
                child: Icon(
                  Icons.edit,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
