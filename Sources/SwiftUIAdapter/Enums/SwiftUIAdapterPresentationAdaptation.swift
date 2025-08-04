//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterPresentationAdaptation {
  case automatic
  case fullScreenCover
  case none
  case popover
  case sheet
  
  @available(iOS 16.4, macOS 13.3, *)
  var value: PresentationAdaptation {
    switch self {
    case .automatic: .automatic
    case .fullScreenCover: .fullScreenCover
    case .none: .none
    case .popover: .popover
    case .sheet: .sheet
    }
  }
}
