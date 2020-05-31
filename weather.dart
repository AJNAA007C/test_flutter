class Weather {

  final int temp;
  final String place;
  final int date;
  final int wind;
  final int rain;
  final int humidity;


  Weather({this.temp, this.place, this.date, this.wind, this.rain,
      this.humidity});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temp: json['temp'],
      place: json['place'],
      date: json['date'],
      rain: json['rain'],
      wind: json['wind'],
      humidity: json['humidity'],
    );
  }
}












// class Coord
//{
//
//final double lon;
//
// final double lat;
//
//Coord({this.lon, this.lat});
//
//factory Coord.fromJson(Map<String, dynamic> json)
//{
//  return Coord(lon: double.parse(json['lon']),lat: double.parse(json['lat']));
//}
//}
//
// class WeatherItem
//{
//  final int id;
//
// final string main;
//
// final string description;
//
// final string icon;
//
//  WeatherItem({this.id, this.main, this.description, this.icon});
//
//  factory WeatherItem.fromJson(Map<String, dynamic> json)
//  {
//    return WeatherItem(id:json['id'],
//        main:json['main'],
//        description:json['description'],
//        icon:json['icon']
//
//    );
//  }
//}
//
//
//
//
//
//
//
//
//
//
//
//class Main
//{
//  final double temp;
//
// final double pressure;
//
// final int humidity;
//
// final double temp_min;
// final double temp_max;
//
// final double sea_level;
//
// final double grnd_level;
//
//  Main({this.temp, this.pressure, this.humidity, this.temp_min, this.temp_max,
//      this.sea_level, this.grnd_level});
//
//  factory Main.fromJson(Map<String, dynamic> json)
//  {
//    return Main(temp_min: double.parse(json['temp_min']),
//               pressure: double.parse(json['pressure']),
//        temp_max: double.parse(json['temp_max']),
//        humidity: double.parse(json['humidity']),
//        temp: double.parse(json['temp']),
//        sea_level: double.parse(json['sea_level']),
//        grnd_level: double.parse(json['grnd_level'])
//    );
//  }
//
//
//}
//
//class Wind {
//  final double speed;
//  final double deg;
//
//  Wind({this.speed, this.deg});
//
//  factory Wind.fromJson(Map<String, dynamic> json)
//  {
//    return Wind(speed: double.parse(json['speed']),deg: double.parse(json['deg']));
//  }
//}
//
//class Clouds
//{
//  final int all;
//
//  Clouds({this.all});
//  factory Clouds.fromJson(Map<String,dynamic> json)
//  {
//    return Clouds(all: json['all']);
//  }
//}
//
//
//
//
//
//
//
//
//
//
//
//class Sys
//{
//  final double message;
//
// final string country;
//
// final int sunrise;
// final int sunset;
//
//  Sys({this.message, this.country, this.sunrise, this.sunset});
//
//  factory Sys.fromJson(Map<String,dynamic> json)
//  {
//    return Sys(message: json['message'] ,
//      country: json['country'] ,
//      sunrise: json['sunrise'] ,
//      sunset: json['sunset']);
//  }
//
//
//}
//
//
//
//
//
//
//
//class Weather{
//  final Coord coord;
//
// final List <WeatherItem > weather;
//
// final string base;
//
// final Main main;
//
// final Wind wind;
//
// final Clouds clouds;
//
// final int dt;
//
// final Sys sys;
//
// final int id;
//
// final string name;
//
// final int cod;
//
//  Weather({this.coord, this.weather, this.base, this.main, this.wind,
//      this.clouds, this.dt, this.sys, this.id, this.name, this.cod});
//
//  factory Weather.fromJson(Map<String,dynamic>json)
//  {
//    return Weather(
//         coord: Coord.fromJson(json['coord']),
//        weather: {json['weather']} as List).map((item)=> Weather.fromJson(item)).toKList(),
//        base: json['base'],
//        main:Main.fromJson(json['main']),
//        wind:Wind.fromJson(json['wind']),
//            clouds:Clouds.fromJson(json['clouds']),
//            dt:json['dt'],
//        sys:Sys.fromJson(json['sys']),
//        id: double.parse(json['id']),
//    name:json['name'],
//    cod:json['cod']
//        );
//  }
//
//
//}