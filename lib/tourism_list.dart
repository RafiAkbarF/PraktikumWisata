import 'package:flutter/material.dart';
import 'package:praktikum3/detail_screen.dart';
import 'package:praktikum3/list_item.dart';
import 'package:praktikum3/model/tourism_place.dart';
import 'package:praktikum3/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Jalan Tunjungan',
      location: 'Jl.Tunjungan,Kedungdoro,Kec.Tegalsari,Kota Surabaya,Jawa Timur',
      imageAsset: 'assets/images/hsv_1.jpg',
      image1: 'assets/images/hsv_2.jpg',
      image2: 'assets/images/hsv_3.jpeg',
      image3: 'assets/images/hsv_4.jpg',
      image4: 'assets/images/hsv_5.jpg',
      day: 'Setiap Hari',
      time: '10.00 - 21.00',
      price: 'Free',
      description:
          '''Jalan Tunjungan semenjak awal abad ke-20 telah menjadi salah satu pusat komersial Kota Surabaya. Jalan ini adalah jalan penghubung yang sekali menjadi daerah pertokoan utama di Surabaya.Jalan tersebut menghubungkan derah perumahan disebelah Selatan-Timur & Barat Surabaya (Gubeng, Darmo, Ketabang dan Sawahan),dengan daerah perdagangan yang ada disekitar Jembatan Merah.Disepanjang Jalan Tunjungan terdapat berbagai macam toko dan restoran.Begitu indah. Kemudian di desain sedemikian rupa agar terlihat Salah satunya adalah bangunan pertokoan dan restaurant "HELLENDORN" dipojok Jl. Kenari dan Jl. Tunjungan.Perancangnya adalah Ir. Th. Van Oyen. ''',
    ),
    TourismPlace(
      name: 'Kelenteng Sanggar Agung Kenjeran',
      location: 'Jl. Sukolilo No.100, Sukolilo Baru, Surabaya',
      imageAsset: 'assets/images/kp_1.jpg',
      image1: 'assets/images/kp_2.jpg',
      image2: 'assets/images/kp_3.jpg',
      image3: 'assets/images/kp_4.jpg',
      image4: 'assets/images/kp_5.jpg',
      day: 'Setiap Hari',
      time: '08.00 - 18.00',
      price: 'IDR 10.000',
      description:
          '''Kelenteng Sanggar Agung atau Klenteng Hong San Tang adalah sebuah klenteng di Kota Surabaya. Alamatnya berada di Jalan Sukolilo Nomor 100, Pantai Ria Kenjeran, Surabaya. Kuil ini, selain menjadi tempat ibadah bagi pemeluk Tridharma, juga menjadi tempat tujuan wisata bagi para wisatawan.Kuil ini, selain menjadi tempat ibadah bagi pemeluk Tridharma,juga menjadi tempat tujuan wisata bagi para wisatawan.Klenteng ini dibuka pada tahun 1999.Ciri khas klenteng ini adalah sebuah patung Kwan Im setinggi 20 meter yang terletak di tepi laut.''',
    ),
    TourismPlace(
      name: 'JatimPark 3',
      location: 'Jl. Ir. Soekarno No.144, Beji,Kota Batu, Jawa Timur',
      imageAsset: 'assets/images/jtp_1.jpg',
      image1: 'assets/images/jtp_2.jpeg',
      image2: 'assets/images/jtp_3.jpg',
      image3: 'assets/images/jtp_4.jpg',
      image4: 'assets/images/jtp_5.webp',
      day: 'Setiap Hari',
      time: '11.30 - 20.30',
      price: 'IDR 150,000',
      description:
          '''Wisata Jatim Park 3 ini memiliki wahana-wahana yang seru di antaranya: Dino Mall,Life with Dino,Aquarium 4 Dimensi,The Rimba,dan lain-lain. Selain wahana serba Dinosaurus,ada juga wahana lainnya yang menjadi favorit bagi para pengunjung,yaitu bernama Invinity.Wahana ini menawarkan keunikan berupa Rumah Kaca.Jadi, kamu bisa melihat bayangan yang unik dan aneh di sana.Tentunya, ini juga menjadi spot selfie yang sangat keren.Adapun wahana lainnya yang tak kalah seru, antara lain adalah Music Gallery, Gedung Teater, Red Carpet, dan Hi-Tech Multimedia.Masih banyak lagi yang lainnya. Agar lebih seru, sebaiknya langsung saja datang ke lokasi ''',
    ),
    TourismPlace(
      name: 'Monumen Kapal Selam',
      location: 'Jl. Pemuda No.39, Surabaya',
      imageAsset: 'assets/images/monkasel_1.jpeg',
      image1: 'assets/images/monkasel_2.jpg',
      image2: 'assets/images/monkasel_3.jpg',
      image3: 'assets/images/monkasel_4.jpeg',
      image4: 'assets/images/monkasel_5.jpg',
      day: 'Selasa - Minggu',
      time: '08.00 - 16.00',
      price: 'IDR 15.000',
      description:
          '''Monumen Kapal Selam atau disingkat Monkasel merupakan sebuah monumen yang dibangun menggunakan kapal selam asli.Monumen ini terletak di Jalan Pemuda No. 39, Kota Surabaya,Jawa Timur. Data Dinas Pariwisata Jawa Timur mencatat Monumen Kapal Selam dibuat dari kapal selam KRI Pasopati 410. Salah satu kapal selam milik armada Angkatan Laut Republik Indonesia buatan Uni Soviet tahun 1952. Saat ini,Monumen Kapal Selam merupakan salah satu tempat wisata di Surabaya yang ramai dikunjungi karena unik, edukatif,dan menarik. Menikmati keindahan dari kapal selam Indonesia di Surabaya ini tidak perlu mengeluarkan banyak biaya,karena HTM murah siap memanjakan aktivitas liburanmu.''',
    ),
    TourismPlace(
      name: 'Gunung Bromo',
      location: 'Area Gn. Bromo, Podokoyo, Kec. Tosari, Pasuruan, Jawa Timur',
      imageAsset: 'assets/images/bromo_2.jpg',
      image1: 'assets/images/bromo_1.png',
      image2: 'assets/images/bromo_3.webp',
      image3: 'assets/images/bromo_4.jpg',
      image4: 'assets/images/bromo_5.jpg',
      day: 'Setiap Hari',
      time: '24 Jam',
      price: 'IDR 34,000',
      description:
          '''Gunung Bromo atau dalam bahasa Tengger dieja "Brama" juga disebut Kaldera Tengger, adalah sebuah gunung berapi aktif di Jawa Timur,Gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut.Gunung Bromo terkenal sebagai objek wisata utama di Jawa Timur.Sebagai sebuah objek wisata, Bromo menjadi menarik karena statusnya sebagai gunung berapi yang masih aktif. Gunung Bromo termasuk dalam kawasan Taman Nasional Bromo Tengger Semeru.Bentuk tubuh Gunung Bromo bertautan antara lembah dan ngarai dengan kaldera atau lautan pasir seluas sekitar 10 kilometer persegi.Ia mempunyai sebuah kawah dengan garis tengah ± 800 meter (utara-selatan) dan ± 600 meter (timur-barat). Sedangkan daerah bahayanya berupa lingkaran dengan jari-jari 4 km dari pusat kawah Bromo.''',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider data, widget) {
              return ListItem(
                place: place,
                isDone: data.doneTourismPlaceList.contains(place),
                onCheckboxClick: (bool? value) {
                  if (value != null) {
                    data.complete(place, value);
                  }
                },
              );
            },
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
