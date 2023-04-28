
import SwiftUI

struct Pain: View {
    
    @State var noOpioids = true
    
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
                    Text("When you got hurt special cells neurons send a signal to the brain.\nBrain interpret signal as pain.")
                        .font(Font.title2)
                        .lineSpacing(10)
                }
                .padding([.top, .leading, .trailing], 60)
                .frame(width: geometry.size.width, height: geometry.size.height * 0.5, alignment: .topLeading)
                .background(Color.init(.clear))
                .ignoresSafeArea()
            }
        }
    }
}
