//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterPresentationSizing {
  case form
  
  @available(iOS 18.0, macOS 15.0, *)
  var value: some PresentationSizing {
    switch self {
    case .form:
      return .form
    }
  }
}
