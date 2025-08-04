//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterPresentationBackgroundInteraction {
  case automatic
  case disabled
  case enabled
  
  @available(iOS 16.4, macOS 13.3, *)
  var value: PresentationBackgroundInteraction {
    switch self {
    case .automatic: .automatic
    case .disabled: .disabled
    case .enabled: .enabled
    }
  }
}
