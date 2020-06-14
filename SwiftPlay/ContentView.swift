//
//  ContentView.swift
//  SwiftPlay
//
//  Created by Jeroldliu on 2020/6/14.
//  Copyright © 2020 jeroldliu. All rights reserved.
//

import Foundation
import SwiftUI

///SwiftUI--一个简单的Map介绍页面
struct ContentView:View {
    var body: some View {
        VStack{
            MapView()
                .frame(width: screen_width, height: 300, alignment: .leading)
                .edgesIgnoringSafeArea(.top)
            
            CirclesImage().offset(y: -130).padding(.bottom,-130)
            
            VStack(alignment: .leading) {
                Text("福建厦门")
                    .font(.title)
                    .foregroundColor(.black)
                HStack {
                    Text("厦门鼓浪屿").font(.subheadline)
                    Spacer()
                    Text("福建厦门").font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
    }
}




struct ContentViewPreView:PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
