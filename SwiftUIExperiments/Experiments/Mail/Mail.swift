//  Created by dasdom on 14.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import Foundation

struct Mail {
  let id = UUID()
  let sender: String
  let subject: String
  let text: String
  let date: String
  var isRead = false
}
