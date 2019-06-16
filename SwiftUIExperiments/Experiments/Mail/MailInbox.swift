//  Created by dasdom on 16.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct MailInbox : View {
  let mails = [Mail(sender: "Jon Doe",
                    subject: "SwitUI is awesome",
                    text: "Hi Tim, I looked into SwiftUI and I quite pleases with what I'm seeing. Good stuff!",
                    date: "10:41"),
               Mail(sender: "Dominik Hauser",
                    subject: "Bug in SwiftUI",
                    text: "Hi Tim, I guess I found a bug in SwiftUI. See the attached project. I hope you are well.",
                    date: "9:51")]
  
  var body: some View {
    List(mails.identified(by: \.id)) { mail in
      NavigationButton(destination: MailDetail()) {
        MailRow(mail: mail)
      }
      }
      .navigationBarTitle(Text("Inbox"), displayMode: .large)
  }
}

