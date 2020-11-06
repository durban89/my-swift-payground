import UIKit
import SwiftUI

// State Property Wrappers 的用法
struct MyView: View {
    @State var myString: String = "Hello"
    var body: some View {
        OtherView(shareText: $myString)
    }
}

// Binding Property Wrappers 的用法
struct OtherView: View {
    @Binding var shareText: String
    
    var body: some View {
        Text(shareText)
    }
}

MyView(myString: "Hello world")
