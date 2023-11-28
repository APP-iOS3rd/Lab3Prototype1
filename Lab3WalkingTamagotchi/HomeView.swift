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
        VStack {
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
                        
                        Image(systemName: "chart.bar.xaxis")
                            .font(.largeTitle)
                        
                        Image(systemName: "cart")
                            .font(.largeTitle)
                        
                        Image(systemName: "gearshape")
                            .font(.largeTitle)
                        
                    } //HStack
                    .padding(.bottom, 10)
                    
                    ZStack {
                        Color.gray
                            .frame(width: 350, height: 500)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                        VStack {
                            Image(systemName: "teddybear")
                                .font(.system(size: 150))
                                .padding(.bottom, 50)
                            
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
                        } //VStack
                    } //ZStack
                    
                    HStack(spacing: 14) {
                        Button {
                            myPoint -= foodPrice
                        } label: {
                            VStack {
                                Text("밥 주기")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.bottom, 5)
                                
                                HStack {
                                    Image(systemName: "p.circle.fill")
                                    Text("\(foodPrice)")
                                }
                            }
                            .foregroundStyle(.black)
                            .frame(width: 167, height: 100)
                            .background(.yellow)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                        
                        Button {
                            myPoint -= medicinePrice
                        } label: {
                            VStack {
                                Text("약 주기")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.bottom, 5)
                                
                                HStack {
                                    Image(systemName: "p.circle.fill")
                                    Text("\(medicinePrice)")
                                }
                            }
                            .foregroundStyle(.black)
                            .frame(width: 167, height: 100)
                            .background(.yellow)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                    }
                    Spacer()
                } //VStack
            } //NavigationView
        } //VStack
        .padding()
    }
}

#Preview {
    HomeView()
}
