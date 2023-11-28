//
//  ShopView.swift
//  Lab3WalkingTamagotchi
//
//  Created by Eunsu JEONG on 11/28/23.
//

import SwiftUI

struct ShopView: View {
    
    @State var hats: [String] = ["graduationcap", "graduationcap.fill", "graduationcap.circle", "graduationcap.circle.fill"]
    @State var bags: [String] = ["gym.bag", "bag", "handbag"]
    @State var earRings: [String] = ["heart", "heart.fill", "star", "star.fill"]
    @State var gridArray: [String] = []
    @State var hatButtonColor: Color = .newYellow
    @State var bagButtonColor: Color = .newGray
    @State var earRingButtonColor: Color = .newGray
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Image("room")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 270, height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                
                Image("baby")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
            }
            .padding(.vertical)
            
            VStack(spacing: 0) {
                ZStack {
                    VStack(spacing: 0) {
                        Spacer()
                        
                        HStack(spacing: 0) {
                            Color.yellow
                                .frame(width: 80, height: 30)
                            
                            Color.newGray
                                .frame(width: 80, height: 30)
                            
                            Color.newGray
                                .frame(width: 80, height: 30)
                            
                            Spacer()
                        }
                        .padding(.leading, 13)
                    }
                    
                    HStack(spacing: 0) {
                        Button {
                            gridArray = hats
                            hatButtonColor = .newYellow
                            bagButtonColor = .newGray
                            earRingButtonColor = .newGray
                        } label: {
                            Text("모자")
                                .frame(width: 80, height: 40)
                                .background(hatButtonColor)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .foregroundStyle(.black)
                        }
                        
                        Button {
                            gridArray = bags
                            hatButtonColor = .newGray
                            bagButtonColor = .newYellow
                            earRingButtonColor = .newGray
                        } label: {
                            Text("가방")
                                .frame(width: 80, height: 40)
                                .background(bagButtonColor)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .foregroundStyle(.black)
                        }
                        
                        Button {
                            gridArray = earRings
                            hatButtonColor = .newGray
                            bagButtonColor = .newGray
                            earRingButtonColor = .newYellow
                        } label: {
                            Text("귀걸이")
                                .frame(width: 80, height: 40)
                                .background(earRingButtonColor)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .foregroundStyle(.black)
                        }
                        
                        Spacer()
                    } //HStack: Buttons
                    .padding(.leading, 13)
                }
            } //VStack
            
            ZStack {
                HStack(alignment: .top) {
                    VStack {
                        Color.newYellow
                            .frame(width: 100, height: 100)
                        
                        Spacer()
                    }
                    
                    Spacer()
                }
                
                Color.newYellow
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                
                VStack {
                    LazyVGrid(columns: Array(repeating: GridItem(), count: 4)) {
                        ForEach((0...11), id: \.self) { index in
                            if index < gridArray.count {
                                Image(systemName: gridArray[index])
                                    .font(.system(size: 35))
                                    .frame(minWidth: 75, minHeight: 80)
                                    .background(.white)
                                    .cornerRadius(8)
                            } else {
                                Color.white
                                    .frame(minWidth: 75, minHeight: 80)
                                    .cornerRadius(8)
                            }
                        }
                    } //VGrid
                    .padding(.horizontal, 20)
                    .padding(.top)

                    
                    HStack {
                        Spacer()
                        
                        HStack {
                            Image(systemName: "p.circle.fill")
                            Text("\(HomeView().myPoint)")
                                .fontWeight(.bold)
                        }
                        .frame(width: 120, height: 35)
                        .background(.newDarkGray)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .foregroundStyle(.white)
                    }
                    .padding(.trailing, 30)
                    Spacer()
                } //VStack
            } //ZStack
            .frame(height: 300)
            .padding(.horizontal, 13)
            .padding(.bottom, 20)
            
            HStack {
                Button {
                    
                } label: {
                    Text("저장")
                        .frame(width: 80, height: 50)
                        .background(.yellow)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .foregroundStyle(.black)
                }
                
                Button {
                    
                } label: {
                    Text("구매")
                        .frame(width: 80, height: 50)
                        .background(.yellow)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .foregroundStyle(.black)
                }
            }
            
            Spacer()
        } //VStack
        .onAppear(perform: {
            gridArray = hats
        })
    }
}

#Preview {
    ShopView()
}
