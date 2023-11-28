//
//  SettingView.swift
//  Lab3WalkingTamagotchi
//
//  Created by Eunsu JEONG on 11/28/23.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: HealthDataAccessView()) { Text("접근 권한 설정") }
            }
            .navigationTitle("설정")
        }
    }
}

#Preview {
    SettingView()
}
