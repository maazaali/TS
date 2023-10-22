import Foundation
import SwiftUI

class SignUpViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isVerificationViewShow: Bool = false
}
