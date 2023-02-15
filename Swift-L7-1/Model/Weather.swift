//
//  Weather.swift
//

import Foundation
import RealmSwift
import Realm

struct CurrentWeather: Codable {
    var temperature: Double
    var time: String
    var weathercode: Double
    var winddirection: Double
    var windspeed: Double
}

class CurrentWeatherRealm: Object, Codable {
    @Persisted var temperature: Double
    @Persisted(primaryKey: true) var time: String
    @Persisted var weathercode: Double
    @Persisted var winddirection: Double
    @Persisted var windspeed: Double
}

struct Weather: Codable {
    var elevation: Double
    var latitude: Double
    var longitude: Double
    var timezone: String
    var timezoneAbbreviation: String
    var utcOffsetSeconds: Int
    var generationtimeMs: Double
    var currentWeather: CurrentWeather
}

class WeatherRealm: Object, Codable {
    @Persisted var elevation: Double
    @Persisted var latitude: Double
    @Persisted var longitude: Double
    @Persisted var timezone: String
    @Persisted var timezone_abbreviation: String
    @Persisted var utc_offset_seconds: Int
    @Persisted var generationtime_ms: Double
    @Persisted var current_weather: CurrentWeatherRealm?
}

class Locations: Object {
    @Persisted(primaryKey: true) var name: String = ""
    @Persisted var weather: WeatherRealm? = nil
}
