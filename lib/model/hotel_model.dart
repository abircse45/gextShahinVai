// To parse this JSON data, do
//
//     final hotel = hotelFromJson(jsonString);

import 'dart:convert';

Hotel hotelFromJson(String str) => Hotel.fromJson(json.decode(str));

String hotelToJson(Hotel data) => json.encode(data.toJson());

class Hotel {
    Hotel({
        this.response,
        this.error,
        this.totalPages,
    });

    List<Response> response;
    Error error;
    int totalPages;

    factory Hotel.fromJson(Map<String, dynamic> json) => Hotel(
        response: List<Response>.from(json["response"].map((x) => Response.fromJson(x))),
        error: Error.fromJson(json["error"]),
        totalPages: json["totalPages"],
    );

    Map<String, dynamic> toJson() => {
        "response": List<dynamic>.from(response.map((x) => x.toJson())),
        "error": error.toJson(),
        "totalPages": totalPages,
    };
}

class Error {
    Error({
        this.status,
        this.msg,
    });

    bool status;
    String msg;

    factory Error.fromJson(Map<String, dynamic> json) => Error(
        status: json["status"],
        msg: json["msg"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
    };
}

class Response {
    Response({
        this.id,
        this.title,
        this.slug,
        this.thumbnail,
        this.stars,
        this.starsCount,
        this.payarr,
        this.location,
        this.desc,
        this.price,
        this.currCode,
        this.currSymbol,
        this.amenities,
        this.avgReviews,
        this.latitude,
        this.longitude,
        this.address,
        this.airportDistance,
        this.citycenterDistance,
        this.beachDistance,
        this.breakfastCrg,
        this.hotelpayOpt,
        this.portDistance,
        this.lastBooking,
        this.popularAminities,
        this.policy,
        this.basicprice,
        this.stayNight,
    });

    String id;
    String title;
    String slug;
    String thumbnail;
    String stars;
    String starsCount;
    String payarr;
    String location;
    String desc;
    String price;
    String currCode;
    String currSymbol;
    List<Nity> amenities;
    AvgReviews avgReviews;
    String latitude;
    String longitude;
    String address;
    String airportDistance;
    String citycenterDistance;
    String beachDistance;
    String breakfastCrg;
    String hotelpayOpt;
    String portDistance;
    String lastBooking;
    List<Nity> popularAminities;
    dynamic policy;
    int basicprice;
    int stayNight;

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        id: json["id"],
        title: json["title"],
        slug: json["slug"],
        thumbnail: json["thumbnail"],
        stars: json["stars"],
        starsCount: json["starsCount"],
        payarr: json["payarr"],
        location: json["location"],
        desc: json["desc"],
        price: json["price"],
        currCode: json["currCode"],
        currSymbol: json["currSymbol"],
        amenities: List<Nity>.from(json["amenities"].map((x) => Nity.fromJson(x))),
        avgReviews: AvgReviews.fromJson(json["avgReviews"]),
        latitude: json["latitude"],
        longitude: json["longitude"],
        address: json["address"],
        airportDistance: json["airport_distance"],
        citycenterDistance: json["citycenter_distance"],
        beachDistance: json["beachDistance"],
        breakfastCrg: json["breakfast_crg"],
        hotelpayOpt: json["hotelpay_opt"],
        portDistance: json["portDistance"],
        lastBooking: json["last_booking"],
        popularAminities: List<Nity>.from(json["popular_aminities"].map((x) => Nity.fromJson(x))),
        policy: json["policy"],
        basicprice: json["basicprice"],
        stayNight: json["stay_night"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "slug": slug,
        "thumbnail": thumbnail,
        "stars": stars,
        "starsCount": starsCount,
        "payarr": payarr,
        "location": location,
        "desc": desc,
        "price": price,
        "currCode": currCode,
        "currSymbol": currSymbol,
        "amenities": List<dynamic>.from(amenities.map((x) => x.toJson())),
        "avgReviews": avgReviews.toJson(),
        "latitude": latitude,
        "longitude": longitude,
        "address": address,
        "airport_distance": airportDistance,
        "citycenter_distance": citycenterDistance,
        "beachDistance": beachDistance,
        "breakfast_crg": breakfastCrg,
        "hotelpay_opt": hotelpayOpt,
        "portDistance": portDistance,
        "last_booking": lastBooking,
        "popular_aminities": List<dynamic>.from(popularAminities.map((x) => x.toJson())),
        "policy": policy,
        "basicprice": basicprice,
        "stay_night": stayNight,
    };
}

class Nity {
    Nity({
        this.icon,
        this.name,
    });

    String icon;
    String name;

    factory Nity.fromJson(Map<String, dynamic> json) => Nity(
        icon: json["icon"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "icon": icon,
        "name": name,
    };
}

class AvgReviews {
    AvgReviews({
        this.clean,
        this.comfort,
        this.location,
        this.facilities,
        this.staff,
        this.totalReviews,
        this.overall,
    });

    double clean;
    double comfort;
    double location;
    double facilities;
    double staff;
    String totalReviews;
    double overall;

    factory AvgReviews.fromJson(Map<String, dynamic> json) => AvgReviews(
        clean: json["clean"].toDouble(),
        comfort: json["comfort"].toDouble(),
        location: json["location"].toDouble(),
        facilities: json["facilities"].toDouble(),
        staff: json["staff"].toDouble(),
        totalReviews: json["totalReviews"],
        overall: json["overall"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "clean": clean,
        "comfort": comfort,
        "location": location,
        "facilities": facilities,
        "staff": staff,
        "totalReviews": totalReviews,
        "overall": overall,
    };
}
