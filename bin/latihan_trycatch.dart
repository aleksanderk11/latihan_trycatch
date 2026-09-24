import 'dart:convert';

import 'package:http/http.dart' as http;
void main() async{
  // fungsi tanpa pengembalian nilai (dengan future async await)
  // Future<void> tarikdata() async {
  //   try {
  //     var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

  //     var data = jsonDecode(response.body); // untuk mengubah var data json ke listmap

  //     print('nama saya ${data[1]['name']}, email saya ${data[1]['email']}, kota saya ${data[1]['address']['city']}');
  //     print('titik lokasi saya ${data[1]['address']['geo']['lat']}, ${data[1]['address']['geo']['lng']}');
  //   } catch (e) {
  //     print(e);
      
  //   }
    
  // } 
  // await tarikdata();

  // fungsi dengan pengembalian nilai (future async await)
  Future<Map<dynamic, dynamic>> tarikdata() async {
    try{
      var response = await http.get(Uri.parse('https://dummyjson.com/products'));

      var data = jsonDecode(response.body);
      
      return data;
    } catch (e) {
      print(e);
      return {};
    }
  }

  var hasil = await tarikdata();
  // print(hasil[3]['name']);

  // for
  // for (var i = 0; i < hasil.length; i++) {
  //   print('-------------------------------------------');
  //   print('${hasil[i]['name']}, ${hasil[i]['username']}, ${hasil[i]['email']}');
  // }


  // for in
  // for (var element in hasil) {
  //   print('-------------------------------------------');
  //   print('${element['name']}, ${element['username']}, ${element['email']}');
  // }

  // foreach
  // hasil.forEach((i){
  //   print('-------------------------------------------');
  //   print('${i['name']}, ${i['username']}, ${i['email']}');
  // });

  // poin
  for (var i hasil['products']; i++) {
    print('-------------------------------------------');
    print('${hasil[i]['title']}, ${hasil[i]['category']}, ${hasil[i]['price']}, ${hasil[i]['stock']}');
  }



  
}