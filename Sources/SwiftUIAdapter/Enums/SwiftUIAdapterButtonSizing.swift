//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterButtonSizing {
  case automatic
  case fitted
  case flexible
  
  @available(iOS 26.0, macOS 26.0, *)
  var value: ButtonSizing {
    switch self {
    case .automatic: .automatic
    case .fitted: .fitted
    case .flexible: .flexible
    }
  }
}
