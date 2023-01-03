//
//  HealthKitReaderApp.swift
//  HealthKitReader
//
//  Created by Brahim Berkasse on 3/1/2023.
//

import SwiftUI
import HealthKit

@main
struct HealthKitReaderApp: App {
    
    private let healthStore: HKHealthStore
    
    init(){
        guard HKHealthStore.isHealthDataAvailable() else {
            fatalError("THIS DEVICE DOES NOT SUPPORT HEALHTKIT !");
        }
        healthStore = HKHealthStore()
        requestHealthkitPermissions()
    }
    
    private func requestHealthkitPermissions() {
        let sampleTypeReads = Set([
            HKObjectType.categoryType(forIdentifier: .sleepAnalysis)!,
            HKObjectType.quantityType(forIdentifier: .heartRate)!,
        ]);
        healthStore.requestAuthorization(toShare: nil, read: sampleTypeReads){(success, error) in
            print("Requets authorization -- Success : ", success, "Error :", error ?? "nil")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
