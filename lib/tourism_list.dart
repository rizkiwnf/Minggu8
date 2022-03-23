import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementp2/done_tourism_list.dart';
import 'package:statemanagementp2/model/tourism_place.dart';
import 'package:statemanagementp2/provider/done_tourism_provider.dart';
import 'detail_screen.dart';
import 'list_item.dart';

class TourismList extends StatefulWidget{
  const TourismList({Key? key}) : super(key: key);
  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList>{
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine',
      location: 'Jl. Pemuda Surabaya',
      imageAsset: 'assets/images/submarine.jpg',
      kalender: 'everyday',
      clock: '08.00 - 19.00',
      price: 'Rp. 15.000',
      deskripsi: 'Bukti sejarah menunjukkan bahwa Surabaya sudah ada jauh sebelum zaman kolonial, seperti yang tercantum dalam prasasti Trowulan I, berangka 1358 M. Dalam prasasti tersebut terungkap bahwa Surabaya (Churabhaya) masih berupa desa di tepi sungai Brantas dan juga sebagai salah satu tempat penyeberangan penting sepanjang daerah aliran sungai Brantas. Surabaya juga tercantum dalam pujasastra Kakawin Nagarakretagama yang ditulis oleh Empu Prapañca yang bercerita tentang perjalanan pesiar Raja Hayam Wuruk pada tahun 1365 M dalam pupuh XVII (bait ke-5, baris terakhir).',
      imageAsset2: 'assets/images/submarine2.jpg',
      imageAsset3: 'assets/images/submarine3.jpg',
      imageAsset4: 'assets/images/submarine4.jpg',
      imageAsset5: 'assets/images/submarine5.jpg',
    ),
    TourismPlace(
      name: 'Kelenteng Sanggar Agung',
      location: 'Jl. Kenjeran',
      imageAsset: 'assets/images/klenteng.jpg',
      kalender: 'mon-sat',
      clock: '08.00 - 21.00',
      price: 'Free',
      deskripsi: 'Kelenteng adalah istilah “generic” untuk tempat ibadah yang bernuansa arsitektur Tionghoa, dan sebutan ini hanya dikenal di pulau Jawa, tidak dikenal di wilayah lain di Indonesia, sebagai contoh di Sumatra mereka menyebutnya bio; di Sumatra Timur mereka menyebutnya am dan penduduk setempat kadang menyebut pekong atau bio; di Kalimantan di orang Hakka menyebut kelenteng dengan istilah thai Pakkung, pakkung miau atau shinmiau. Tapi dengan waktu seiring, istilah ‘kelenteng’ menjadi umum dan mulai meluas penggunaannya.',
      imageAsset2: 'assets/images/klenteng2.jpg',
      imageAsset3: 'assets/images/klenteng3.jpg',
      imageAsset4: 'assets/images/klenteng4.jpg',
      imageAsset5: 'assets/images/klenteng5.jpg',
    ),
    TourismPlace(
      name: 'Taman',
      location: 'Jl. Huru Hara',
      imageAsset: 'assets/images/taman.jpg',
      kalender: 'mon-fri',
      clock: '08.00 - 23.00',
      price: 'Rp. 5000',
      deskripsi: 'Taman merupakan areal yang berisikan komponen material keras dan lunak yang saling mendukung satu sama lainnya yang sengaja dibuat oleh manusia dalam kegunaanya sebagai tempat penyegar dalam dan luar ruangan. Taman dapat dibagi dalam taman alami dan taman buatan. Taman yang sering dijumpai adalah taman rumah tinggal, taman lingkungan, taman bermain, taman rekreasi, taman botani.',
      imageAsset2: 'assets/images/taman2.jpg',
      imageAsset3: 'assets/images/taman3.jpg',
      imageAsset4: 'assets/images/taman4.jpg',
      imageAsset5: 'assets/images/taman5.jpg',
    ),
    TourismPlace(
      name: 'Rooftop',
      location: 'Jl. Wonokromo',
      imageAsset: 'assets/images/rumah.png',
      kalender: 'tue-thurs',
      clock: '08.00 - 17.00',
      price: 'Free',
      deskripsi: 'Dalam arti umum, rumah merupakan salah satu bangunan yang dijadikan tempat tinggal selama jangka waktu tertentu. Rumah bisa menjadi tempat tinggal manusia maupun hewan, tetapi istilah untuk tempat tinggal yang khusus bagi hewan adalah sangkar, sarang, atau kandang.',
      imageAsset2: 'assets/images/rumah2.jpg',
      imageAsset3: 'assets/images/rumah3.jpg',
      imageAsset4: 'assets/images/rumah4.jpg',
      imageAsset5: 'assets/images/rumah5.jpg',
    ),
    TourismPlace(
      name: 'Market',
      location: 'Jl. Tjokroaminoto',
      imageAsset: 'assets/images/market.jpg',
      kalender: 'tue-thurs',
      clock: '08.00 - 10.00',
      price: 'Free',
      deskripsi: 'pasar adalah tempat di mana dua pihak atau lebih dapat bertemu untuk melakukan transaksi ekonomi, bahkan yang tidak melibatkan alat pembayaran yang sah sekalipun. Transaksi pasar dapat melibatkan pertukaran barang, jasa, tenaga kerja, modal, surat berharga, informasi, hingga mata uang. Di mana barang-barang itu berpindah dari satu pihak ke pihak lain.',
      imageAsset2: 'assets/images/market2.jpg',
      imageAsset3: 'assets/images/market3.jpg',
      imageAsset4: 'assets/images/market4.jpg',
      imageAsset5: 'assets/images/market5.jpg',
    ),
    TourismPlace(
      name: 'Wedding Place',
      location: 'Jl. Kutisari',
      imageAsset: 'assets/images/wedding.jpg',
      kalender: 'everyday',
      clock: '08.00 - 17.00',
      price: 'Free',
      deskripsi: 'Pernikahan adalah upacara pengikatan janji nikah yang dirayakan atau dilaksanakan oleh dua orang pria dan wanita dengan maksud meresmikan ikatan perkawinan secara norma agama, norma hukum, dan norma sosial. Upacara pernikahan memiliki banyak ragam dan variasi menurut tradisi suku bangsa, agama, budaya, maupun kelas sosial. Penggunaan adat atau aturan tertentu kadang-kadang berkaitan dengan aturan atau hukum agama tertentu.',
      imageAsset2: 'assets/images/wedding2.jpg',
      imageAsset3: 'assets/images/wedding3.jpg',
      imageAsset4: 'assets/images/wedding4.jpg',
      imageAsset5: 'assets/images/wedding5.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailScreen(place: place);
              }));
            },
            child: Consumer<DoneTourismProvider>(
              builder: (context, DoneTourismProvider data, widget){
                return ListItem(
                    place: place,
                    isDone: data.doneTourismPlaceList.contains(place),
                    onCheckboxClick: (bool? value){
                      setState(() {
                        if(value != null){
                          value
                              ? data.doneTourismPlaceList.add(place) : data.doneTourismPlaceList.remove(place);
                        }
                      });
                    }
                );
              }
            )

          );
        },
        itemCount: tourismPlaceList.length,
      );
  }
}