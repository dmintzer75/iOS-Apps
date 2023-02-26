//
//  ContentView.swift
//  WeatherDM
//
//  Created by Dario Mintzer on 26/02/2023.
//

import SwiftUI

struct ContentView: View {

    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?

    var body: some View {
        VStack {
            if let location = locationManager.location {

                if let weather = weather {
                    Text("Weather data fetched!")
                } else {
                    LoadingView()
                        .task {
                        do {
                            weather = try await weatherManager.getCurrentWeather(latitude: location.latitude, longitude: location.latitude)
                        } catch {
                            print("Error getting weather: \(error)")
                        }
                    }
                }


            } else {
                if locationManager.isLoading {
                    LoadingView()

                } else {
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }


        }
            .background(Color(hue: 0.639, saturation: 0.958, brightness: 0.436))
            .preferredColorScheme(.dark)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
