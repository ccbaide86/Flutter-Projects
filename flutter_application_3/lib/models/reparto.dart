import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_application_3/models/cast.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

//ignore: must_be_immutable
class DetailsMovie extends StatelessWidget {
  DetailsMovie({super.key});

  List<Reparto> credits = [];

  @override
  Widget build(BuildContext context) {
    final movie = ModalRoute.of(context)!.settings.arguments as Movie;
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 350,
              child: Stack(children: [
                SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: CachedNetworkImage(
                    placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(strokeWidth: 4)),
                    errorWidget: (context, url, error) => const Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.cloud_off),
                        Text("Sin conexión"),
                      ],
                    ),
                    imageUrl:
                        "https://image.tmdb.org/t/p/w500${movie.backdropPath}",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 50,
                  left: MediaQuery.of(context).size.width * 0.5 - 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator(strokeWidth: 4)),
                      errorWidget: (context, url, error) => const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.cloud_off),
                          Text("Sin conexión"),
                        ],
                      ),
                      imageUrl:
                          "https://image.tmdb.org/t/p/w500${movie.posterPath}",
                      width: 200,
                      height: 300,
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.calendar_month),
                      Text(movie.releaseDate),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.language),
                      Text(
                          'Lenguaje: ${(movie.originalLanguage).toUpperCase()}'),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const RowStars(),
                      Text(
                        'Rating: ${movie.voteAverage}',
                        style: const TextStyle(
                            color: Colors.amber, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Descripción",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(movie.overview),
                    const Text(
                      "Reparto",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    FutureBuilder(
                        future: getCredits(movie),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Credit(credits: credits),
                            );
                          } else if (snapshot.hasError) {
                            return const Text('Error al obtener los créditos.');
                          } else {
                            return const Center(
                                child: CircularProgressIndicator());
                          }
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //* AREA DE METODOS

  Future<void> getCredits(Movie movie) async {
    final response = await http.get(
      Uri.parse(
          'https://api.themoviedb.org/3/movie/${movie.id}/credits?language=es-ES&api_key=f41cf6ed550dbfa29eb141e252443db6'),
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> results = data['cast'];
      credits = results.map((results) => Cast.fromJson(results)).toList();
    } else {
      throw Exception('Error no se resolvio la petición');
    }
  }
}

class RowStars extends StatelessWidget {
  const RowStars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
      ],
    );
  }
}
