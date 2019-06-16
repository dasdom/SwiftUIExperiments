//  Created by dasdom on 16.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct ExperimentRow : View {
  
  let title: String
  var imageName: String?
  
  var body: some View {
    HStack(spacing: 10) {
      if imageName != nil {
        Image(imageName!)
          .resizable()
          .frame(width: 64, height: 114)
      }
      
      Text(title)
    }
  }
}


