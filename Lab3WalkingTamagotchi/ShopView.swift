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
                    .frame(width: 250, height: 280)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .aspectRatio(contentMode: .fit)
                
                Image("baby")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 130)
            } //Zstack: Monster Images
            .padding(.top, 30)
            .padding(.bottom, 20)
            
            ZStack {
                VStack(spacing: 0) {
                    Spacer()
                    
                    HStack(spacing: 0) {
                        hatButtonColor
                            .frame(width: 80, height: 30)
                        
                        bagButtonColor
                            .frame(width: 80, height: 30)
                        
                        earRingButtonColor
                            .frame(width: 80, height: 30)
                        
                        Spacer()
                    }
                    .padding(.leading, 13)
                } //VStack: Button Background
                
                VStack(spacing: 0) {
                    Spacer()
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
                                .clipShape(RoundedRectangle(cornerRadius: 20))
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
                                .clipShape(RoundedRectangle(cornerRadius: 20))
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
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .foregroundStyle(.black)
                        }
                        
                        Spacer()
                    } //HStack: Buttons
                    .padding(.leading, 13)
                    Spacer().frame(height: 14)
                } //VStack: To make button alignment to bottom
            } //ZStack: Item tab
            
            ZStack {
                HStack(alignment: .top) {
                    VStack {
                        Color.newYellow
                            .frame(width: 100, height: 100)
                        
                        Spacer()
                    }
                    
                    Spacer()
                } //HStack: For GridViewBackground
                
                Color.newYellow
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                
                VStack {
                    LazyVGrid(columns: Array(repeating: GridItem(), count: 4)) {
                        ForEach((0...7), id: \.self) { index in
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
                    } //HStack: Point with trailingAlignent
                    .padding(.trailing, 20)
                    
                    Spacer()
                } //VStack: GridItem & Point
            } //ZStack
            .frame(height: 200)
            .padding(.horizontal, 13)
            .padding(.bottom, 30)
            
            HStack {
                Button {
                    
                } label: {
                    Text("착용")
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
            } //HStack: Save & Buy Button
            
            Spacer()
        } //VStack: Entire View
        .onAppear(perform: {
            gridArray = hats
        })
    }
}

#Preview {
    ShopView()
}
