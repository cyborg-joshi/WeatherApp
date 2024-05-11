//
//  WelcomeView.swift
//  WeatherDemo
//
//  Created by KANISHK on 11/05/24.
//

import CoreLocationUI
import SwiftUI
import CoreLocation

struct WelcomeView: View {
    @EnvironmentObject var locationManager : LocationManager
    var body: some View {
        VStack{
            VStack(spacing :20){
                Text("Welcome to the Weather App")
                    .bold().font(.title)
                
                Text("Please share your current location to get the weather in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
            
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    
    }
}
#Preview {
    WelcomeView()
}
