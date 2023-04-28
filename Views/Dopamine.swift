
import SwiftUI

struct Dopamine: View {
    
    @State var Opioids = 0
    @State var dopamine : Bool = true
    @State var goodThings : Bool = true
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
                    Text("When something good happens dopamine is released giving feeliing of pleasure. Dopamine is really important because it helps us feel happy, motivated, and help us move our bodies.")
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

