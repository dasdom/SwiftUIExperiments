//  Created by dasdom on 07.07.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct TwitterProfileHeader : View {
  
  func yOffset(for geometry: GeometryProxy) -> CGFloat {
    return geometry.frame(in: .global).minY
  }
  
  func headerImageOffset(for geometry: GeometryProxy) -> CGSize {
    let y = yOffset(for: geometry)
    return CGSize(width: 0, height: y > -17 ? 0 : -17 - y)
  }
  
  func avatarImageScale(for geometry: GeometryProxy) -> CGFloat {
    let y = yOffset(for: geometry)
    return (100 + max(y, -17)) / 126
  }
  
  func avatarImageOffset(for geometry: GeometryProxy) -> CGSize {
    let y = yOffset(for: geometry)
    return CGSize(width: 0, height: 0 - max(y, -17) / 2.0)
  }
  
  var body: some View {
    List {
      GeometryReader { geometry in
          
          VStack {
            Image("twitter_profile_header")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(minWidth: 0, maxWidth: .infinity)
              .zIndex(1)
              .offset(self.headerImageOffset(for: geometry))
            //            .background(Color.green)
            
            HStack {
              
              AvatarImage()
                .scaleEffect(self.avatarImageScale(for: geometry))
                .offset(self.avatarImageOffset(for: geometry))
              
              Spacer()
              
              Button(action: {
                print("edit profile")
              }) {
                Text("Edit profile")
                  .font(.headline)
                  .foregroundColor(.blue)
              }
                
              .padding([.leading, .trailing], 10)
              .padding([.top, .bottom], 8)
              .cornerRadius(10)
              .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 2))
              .offset(x: 0, y: 8)
            }
            .padding(.trailing, 8)
            .offset(CGSize(width: 0, height: -40))
            .padding(.bottom, -40)
            .zIndex(geometry.frame(in: .global).minY > -17 ? 2 : 0)
            //          .background(Color.red)
            
          }
          
        //        .background(Color.yellow)
      }
      .frame(width: UIScreen.main.bounds.width, height: CGFloat(290.0))
      .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
      
      ForEach(0..<10) { _ in
        Text("Foo")
      }
    }
  }
}

struct AvatarImage : View {
  var body: some View {
    Image("avatar")
      .resizable()
      .aspectRatio(contentMode: .fit)
      .clipShape(Circle())
      .overlay(Circle().stroke(Color.white, lineWidth: 3))
      .frame(width: 100, height: 100)
  }
}
