//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterSafeAreaRegions {
  case all
  case container
  case keyboard
  
  @available(iOS 14.0, macOS 11.0, *)
  var value: SafeAreaRegions {
    switch self {
    case .all: .all
    case .container: .container
    case .keyboard: .keyboard
    }
  }
}
