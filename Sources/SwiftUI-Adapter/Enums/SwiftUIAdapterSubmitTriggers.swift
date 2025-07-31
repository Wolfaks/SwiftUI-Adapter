//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterSubmitTriggers {
  case search
  case text
  
  @available(iOS 15.0, macOS 12.0, *)
  var value: SubmitTriggers {
    switch self {
    case .search: .search
    case .text: .text
    }
  }
}
