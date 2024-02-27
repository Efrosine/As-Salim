class DoctorData {
  DoctorData({
    required this.name,
    required this.specialization,
    required this.image,
  });

  final String image;
  final String name;
  final String specialization;
}

List<DoctorData> doctors = [
  DoctorData(
    name: "Dr. Fajar Triatmojo, SpOG",
    specialization: "Consultant - Spesialis Kandungan",
    image: "assets/images/doctor1.jpg",
  ),
  DoctorData(
    name: "Dr. Abdillah, Sp.A",
    specialization: "Consultant - Spesialis Anak",
    image: "assets/images/doctor2.jpg",
  ),
  DoctorData(
    name: "Dr. Syifa, SpTHT",
    specialization: "Consultant - Spesialis THT",
    image: "assets/images/doctor3.jpg",
  ),
  DoctorData(
    name: "Dr. Bintang Surya, SpKJ",
    specialization: "Consultant - Spesialis Kedokteran Jiwa",
    image: "assets/images/doctor4.jpg",
  ),
];
