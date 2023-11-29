//
//  WalkDataView.swift
//  Lab3WalkingTamagotchi
//
//  Created by Eunsu JEONG on 11/28/23.
//

import Charts
import SwiftUI

struct Posting: Identifiable {
  let weekDay: String
  let walk: Int
  
  var id: String { weekDay }
}

struct WalkDataView: View {
    let postings: [Posting] = [
        .init(weekDay: "Mon", walk: 4092),
        .init(weekDay: "Tue", walk: 4718),
        .init(weekDay: "Wed", walk: 5708),
        .init(weekDay: "Thu", walk: 948),
        .init(weekDay: "Fri", walk: 8941),
        .init(weekDay: "Sat", walk: 20984),
        .init(weekDay: "Sun", walk: 10929)
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("이번 주 기록")
                    .font(.system(size: 40, weight: .heavy))
                
                Spacer()
            }
            
            if #available(iOS 16.0, *) {
                Chart {
                    ForEach(postings) { posting in
                        BarMark(
                            x: .value("Weekday", posting.weekDay),
                            y: .value("Walk", posting.walk)
                        )
                        .foregroundStyle(.newYellow)
                    }
                }
            } else {
                // Fallback on earlier versions
            }
        }
    }
}

#Preview {
    WalkDataView()
}
