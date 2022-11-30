
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
 

class HomePage extends StatelessWidget {
  
  getDataPokemon() async{
    Uri _uri = Uri.parse("hhtps://raw.githubusercontent.com/Biuni/Pokemon60-Pokedex/master/pokedex.json");
    http.Response response = await http.get(_uri);
    print(response.statusCode);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Data"),
          onPressed: () {
            getDataPokemon();
          },
        ),
      ),
    );
  }
}
