//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterScrollBounceBehavior {
  case always
  case automatic
  case basedOnSize
  
  @available(iOS 16.4, macOS 13.3, *)
  var value: ScrollBounceBehavior {
    switch self {
    case .always: .always
    case .automatic: .automatic
    case .basedOnSize: .basedOnSize
    }
  }
}
