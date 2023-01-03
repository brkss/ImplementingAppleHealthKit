//
//  ContentView.swift
//  HealthKitReader
//
//  Created by Brahim Berkasse on 3/1/2023.
//

import SwiftUI
import HealthKit

struct ContentView: View {
    
    //@EnvironmentObject var healthStore: HKHealthStore
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
