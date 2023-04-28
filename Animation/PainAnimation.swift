
import SwiftUI

struct PainAnimation: View {
    
    @Binding var noOpioids : Bool
    
    @State private var animatePain = false
    @State private var animateSignal = false
    @State private var animateBrain = false
    @State private var animateOpioids = false
    
    
    var body:some View{
        
        VStack {
            HStack {
                HStack{
                    VStack{
                        Text("Opioids")
                            .padding()
                        Image(systemName: "pills")
                            .font(.system(size:40))
                            .foregroundColor(animateOpioids ? .pink : .gray)
                            .scaleEffect(animateOpioids ? 1.1 : 1)
                            .animation(.easeInOut(duration: 2), value: animateOpioids)
                    }
                    .onAppear{
                        animateOpioids = !noOpioids
                    }
                    .onDisappear{
                        withAnimation(nil) {
                            animateOpioids = false
                        }
                    }
                    
                    VStack{
                        Text("Pain")
                            .padding()
                        Image(systemName: "exclamationmark.circle.fill")
                            .font(.system(size:40))
                            .foregroundColor(animatePain ? .orange : .gray)
                            .scaleEffect(animatePain ? 1.1 : 1)
                            .animation(.easeInOut(duration: 1).repeatForever().delay(0.1), value: animatePain)
                    }
                    .onAppear{
                        animatePain = true
                    }
                }
                VStack {
                    Text("Signal by neuron")
                        .padding()
                    HStack{
                        Circle()
                            .frame(width: 10)
                            .foregroundColor(animateSignal ? .orange : .gray)
                            .scaleEffect(animateSignal ? 1.4 : 1)
                            .animation(Animation.easeInOut(duration: 1).repeatForever().delay(0.3), value: animateSignal)
                        Circle()
                            .frame(width: 10)
                            .foregroundColor(animateSignal ? .orange : .gray)
                            .scaleEffect(animateSignal ? 1.4 : 1)
                            .animation(Animation.easeInOut(duration: 1).repeatForever().delay(0.6), value: animateSignal)
                        Circle()
                            .frame(width: 10)
                            .foregroundColor(animateSignal ? .orange : .gray)
                            .scaleEffect(animateSignal ? 1.4 : 1)
                            .animation(Animation.easeInOut(duration: 1).repeatForever().delay(0.9), value: animateSignal)
                        Circle()
                            .frame(width: 10)
                            .foregroundColor(animateSignal ? .orange : .gray)
                            .scaleEffect(animateSignal ? 1.4 : 1)
                            .animation(Animation.easeInOut(duration: 1).repeatForever().delay(1.2), value: animateSignal)
                    }
                    .foregroundColor(.gray)
                    .onAppear {
                        animateSignal = noOpioids
                    }
                }
                
                VStack{
                    Text("Brain")
                        .padding()
                    ZStack{
                        Image(systemName: "brain.head.profile")
                            .renderingMode(.template)
                            .foregroundStyle(animateBrain ? .orange : .gray, .gray)
                            .font(.system(size:40))
                            .scaleEffect(animateBrain ? 1.1 : 1)
                            .animation(Animation.easeInOut(duration: 1).repeatForever().delay(1.6), value: animateBrain)
                        Text("Feel pain")
                            .foregroundColor(.orange)
                            .offset(y:50)
                            .opacity(self.animateBrain ? 1 : 0)
                            .animation(.easeOut(duration: 1).repeatForever().delay(1.6), value: animateBrain)
                    }
                }
                .onAppear {
                    animateBrain = noOpioids
                }
            }
        }
    }
}
