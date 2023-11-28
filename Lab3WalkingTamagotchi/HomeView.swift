//
//  ContentView.swift
//  Lab3WalkingTamagotchi
//
//  Created by Eunsu JEONG on 11/28/23.
//

import SwiftUI

struct HomeView: View {
    @State var myPoint: Int = 10000
    @State var foodPrice: Int = 100
    @State var medicinePrice: Int = 100
    
    var body: some View {
            NavigationView {
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            HStack {
                                Image(systemName: "p.circle.fill")
                                Text("\(myPoint)")
                                    .fontWeight(.bold)
                            }
                            .padding(.bottom, 1)
                            
                            Text("오늘 걸음수: 3245")
                                .bold()
                        }
                        .font(.system(size: 20))
                        Spacer()
                        
                        NavigationLink(destination: WalkDataView()) {
                            Image(systemName: "chart.bar.xaxis")
                                .font(.largeTitle)
                                .foregroundStyle(.gray)
                        }
                        
                        NavigationLink(destination: ShopView()) {
                            Image(systemName: "cart")
                                .font(.largeTitle)
                                .foregroundStyle(.gray)
                        }
                        
                        NavigationLink(destination: SettingView()) {
                            Image(systemName: "gearshape")
                                .font(.largeTitle)
                                .foregroundStyle(.gray)
                        }
                        
                    } //HStack
                    .padding(.bottom, 10)
                    
                    ZStack {
                        Image("room")
                            .resizable()
                            .frame(width: 350, height: 500)
                            .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                        VStack {
                            Image("baby")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 300)
                                .padding(.bottom, 10)
                            
                            ZStack {
                                Color.white
                                    .frame(width: 200, height: 120)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                
                                VStack(alignment: .leading) {
                                    Text("LV. 10")
                                        .fontWeight(.bold)
                                        .padding(.bottom, 2)
                                        .frame(width: 200, alignment: .leading)
                                    
                                    Text("상태")
                                        .font(.system(size: 20, weight: .bold))
                                    
                                    Text("아주 배고픔")
                                    
                                    Text("건강")
                                }
                                .padding(.leading, 20)
                            } //ZStack
                            .padding(.vertical, 20)
                        } //VStack
                    } //ZStack
                    
                    HStack(spacing: 14) {
                        Button {
                            myPoint -= foodPrice
                        } label: {
                            VStack {
                                Text("약 주기")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.bottom, 5)
                                
                                HStack {
                                    Image(systemName: "p.circle.fill")
                                    Text("\(foodPrice)")
                                }
                            }
                            .foregroundStyle(.black)
                            .frame(width: 167, height: 100)
                            .background(.newGray)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                        
                        Button {
                            myPoint -= medicinePrice
                        } label: {
                            VStack {
                                Text("밥 주기")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.bottom, 5)
                                
                                HStack {
                                    Image(systemName: "p.circle.fill")
                                    Text("\(medicinePrice)")
                                }
                            }
                            .foregroundStyle(.black)
                            .frame(width: 167, height: 100)
                            .background(.newYellow)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                    }
                    Spacer()
                } //VStack
            } //NavigationView
        .padding()
    }
}

#Preview {
    HomeView()
}
