
import SwiftUI

struct DopamineMoreOpioids: View {
    
    @State var Opioids = 3
    @State var dopamine : Bool = true
    @State var goodThings : Bool = false
    @State var stop : Bool = false
    @State var question : Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                VStack{
                    DopamineAnimation(
                        Opioids: $Opioids,
                        dopamine: $dopamine,
                        goodThings: $goodThings,
                        stop : $stop,
                        question: $question
                    )
                }
                .frame(width: geometry.size.width, height: geometry.size.height * 0.5)
                .background(Color.init(.systemGray6))
                VStack(alignment: .leading){
                    Text("Dopamine, Opioids and Addiction")
                        .font(.title)
                        .bold()
                        .padding(.bottom)
                    Text("Using opioids can cause tolerance and addiction, leading to a need for higher doses for the same initial effect.")
                        .font(Font.title2)
                        .lineSpacing(10)
                        .padding(.bottom, 30)
                    Text("Higher doses of opioids can lead to more severe side effects, such as nausea, drowsiness, and breathing difficulties.")
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
