
import SwiftUI

struct PainOpioids: View {
    
    @State var noOpioids = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                VStack{
                    PainAnimation(
                        noOpioids: $noOpioids)
                }
                .frame(width: geometry.size.width, height: geometry.size.height * 0.5)
                .background(Color.init(.systemGray6))
                VStack(alignment: .leading){
                    Text("Pain and Opioids")
                        .font(.title)
                        .bold()
                        .padding(.bottom)
                    Text("Opioids slow down or blocking pain signal. But opioids can make nervous system more sensitive and more intense pain.")
                        .font(.title2)
                        .lineSpacing(10)
                        .padding(.bottom)
                    Text("That's not all they do.")
                        .font(.title2)
                        .lineSpacing(10)
                }
                .padding([.top, .leading, .trailing], 60)
                .frame(width: geometry.size.width, height: geometry.size.height * 0.5, alignment: .topLeading)
                .ignoresSafeArea()
            }
        }
    }
}
