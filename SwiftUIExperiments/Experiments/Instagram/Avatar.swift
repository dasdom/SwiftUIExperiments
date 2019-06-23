//  Created by dasdom on 22.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct Avatar : View {
  
  let imageName: String
  let darkColor = Color(red: 0.65, green: 0.0, blue: 0.49)
  let lightColor = Color(red: 0.98, green: 0.66, blue: 0.37)
  
    var body: some View {
      Image(imageName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .clipShape(Circle())
        .padding(3)
        .overlay(Circle().stroke(
          AngularGradient(gradient: Gradient(colors: [darkColor, lightColor, darkColor]), center: .init(x: 0.5, y: 0.5), angle: Angle(degrees: -70)), lineWidth: 2))
        .shadow(color: Color(.sRGBLinear, white: 1, opacity: 0.33), radius: 6)
        .frame(minWidth: 0, maxWidth: 50, minHeight: 0, maxHeight: 50)
    }
}
