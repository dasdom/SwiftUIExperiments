//  Created by dasdom on 15.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct Profile : View {
  var body: some View {
    VStack {
      ZStack(alignment: .trailing) {
        Image("header")
          .resizable()
          .aspectRatio(contentMode: .fit)
          //          .frame(minWidth: 0, maxWidth: .infinity)
          .background(Color.yellow)
        
        VStack(spacing: 10) {
          ForEach(["A", "T", "S", "G"].identified(by: \.self)) { abbr in
            Text(abbr)
              .frame(minWidth: 36, maxWidth: 36, minHeight: 36, maxHeight: 36)
              .background(Color.gray)
              .foregroundColor(Color.white)
              .cornerRadius(18)
          }
          }
          .padding([.trailing], 5)
        }
        .frame(minWidth: 0, maxWidth: .infinity)
      
      Image("avatar")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.white, lineWidth: 1))
        .shadow(color: Color(.sRGBLinear, white: 1, opacity: 0.33), radius: 6)
        .frame(minWidth: 0, maxWidth: 100, minHeight: 0, maxHeight: 100)
        .offset(x: 0, y: -50)
        .padding(.bottom, -50)
      
      VStack(spacing: 10) {
        
        Text("Dominik Hauser")
          .font(.title)
          .foregroundColor(Color.white)
        
        Text("dasdom")
          .font(.subheadline)
          .foregroundColor(Color(white: 0.8))
        
        Text("iOS dev durung the day. iOS dev at night. Father and husband all time. Auto Layout master. Swift lover")
          .font(.callout)
          .fontWeight(.light)
          .italic()
          .multilineTextAlignment(.center)
          .foregroundColor(Color(white: 0.8))
          .lineLimit(nil)
          .padding([.leading, .trailing])
      }
      
      Spacer()
      }
      .background(Color(red: 0.12, green: 0.12, blue: 0.14))
      .navigationBarTitle(Text("Profile"), displayMode: .inline)
  }
  
}
