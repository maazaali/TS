import Foundation
import SwiftUI

class FillInfoViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isSuccessViewShow: Bool = false
}
