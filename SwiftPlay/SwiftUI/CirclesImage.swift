//
//  CirclesImage.swift
//  SwiftPlay
//
//  Created by Jeroldliu on 2020/6/14.
//  Copyright © 2020 jeroldliu. All rights reserved.
//

import SwiftUI

struct CirclesImage: View {
    var body:some View {
        Image("timg").frame(width: screen_width/2, height: screen_width/2, alignment: .center)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white,lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CirclesImage_Previews: PreviewProvider {
    static var previews: some View {
        CirclesImage()
    }
}
