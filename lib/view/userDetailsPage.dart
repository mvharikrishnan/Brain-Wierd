import 'package:brin_wierd/model/brianModel.dart';
import 'package:brin_wierd/view/widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';


class UserDetailsPage extends StatelessWidget {
  const UserDetailsPage({super.key, required this.brainModel});
  final BrainModel brainModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const TopAppBarCustom(),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Text(
                  brainModel.name,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Company Name: ${brainModel.company.name}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
                Text(
                  "Username: ${brainModel.username}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
                Text(
                  "email: ${brainModel.email}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
                Text(
                  "Website: ${brainModel.website}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
                Text(
                  "Phone: ${brainModel.phone}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
                const Text(
                  "Address",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  brainModel.address.street,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
                Text(
                  brainModel.address.suite,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
                Text(
                  brainModel.address.city,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
                Text(
                  brainModel.address.suite,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
                Text(
                  brainModel.address.zipcode,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
                const Text(
                  "Location",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Latitude: ${brainModel.address.geo.lat}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
                Text(
                  "Longitude: ${brainModel.address.geo.lng}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
