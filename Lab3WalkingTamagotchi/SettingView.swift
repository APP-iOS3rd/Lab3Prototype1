//
//  SettingView.swift
//  Lab3WalkingTamagotchi
//
//  Created by Eunsu JEONG on 11/28/23.
//

import SwiftUI

struct SettingView: View {
    @State var healthAccess: Bool = false
    @State var soundOff: Bool = false
    @State var darkmode: Bool = false
    @State var sound: Double = 2
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("설정")
                    .font(.system(size: 45))
                    .fontWeight(.heavy)
                
//                HStack {
//                    Toggle(isOn: $healthAccess) {
//                        Text("건강 앱 접근 권한")
//                            .fontWeight(.bold)
//                    }
//                }
//                .padding(.vertical, 5)
//                Divider()
                
                HStack {
                    Toggle(isOn: $soundOff) {
                        Text("음소거")
                            .fontWeight(.bold)
                    }
                }
                .padding(.vertical, 5)
                Divider()
                
                HStack {
                    Toggle(isOn: $darkmode) {
                        Text("다크모드")
                            .fontWeight(.bold)
                    }
                }
                .padding(.vertical, 5)
                Divider()

                Text("사운드")
                    .font(.system(size: 30))
                    .fontWeight(.heavy)
                    .padding(.top, 40)
                
                Slider(value: $sound, in: 0...10, label: { Text("") }, minimumValueLabel: { Text("0") }, maximumValueLabel: { Text("10") })
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    SettingView()
}
