
import SwiftUI

struct DopamineAnimation: View {
    
    @Binding var Opioids : Int
    @Binding var dopamine : Bool
    @Binding var goodThings : Bool
    @Binding var stop : Bool
    @Binding var question : Bool
    
    @State private var dopamineSystemAnimation = false
    @State private var dopamineAnimation = false
    @State private var ourMoodAnimation = false
    @State private var goodThingsAnimation = false
    @State private var stopAnimation = false
    @State private var questionAnimation = false
    
    
    var body:some View{
        VStack {
            HStack {
                HStack {
                    VStack {
                        Text("Good Things")
                            .padding([.trailing, .bottom])
                        Image(systemName: "gift")
                            .font(.system(size:40))
                            .foregroundColor(goodThingsAnimation ? .green : .gray)
                            .scaleEffect(goodThingsAnimation ? 1.1 : 1)
                            .animation(.easeInOut(duration: 1.5), value: goodThingsAnimation)
                    }
                    .offset(y:5)
                    .onAppear{
                        goodThingsAnimation = goodThings
                    }
                    .onDisappear {
                        goodThingsAnimation = false
                    }
                    
                    ZStack{
                        VStack(spacing: 0){
                            if Opioids >= 1 {
                                ForEach (1...Opioids, id: \.self) {i in
                                    Image(systemName: "pills")
                                        .font(.body)
                                        .foregroundColor(.pink)
                                        .bold()
                                }
                            }
                        }
                        .offset(x:-50, y:30)
                        VStack{
                            Text("Dopamine\nSystem")
                                .padding(.horizontal)
                                .padding(.bottom, 5)
                            Image(systemName: "brain.head.profile")
                                .renderingMode(.template)
                                .font(.system(size:40))
                                .foregroundStyle(dopamineSystemAnimation ? (Opioids == 0 ? .yellow : .pink) : .gray, .gray)
                                .scaleEffect(dopamineSystemAnimation ? 1.1 : 1)
                                .animation(.easeInOut(duration: 1).repeatForever().delay(0.1), value: dopamineSystemAnimation)
                        }
                        .onAppear{
                            dopamineSystemAnimation = dopamine
                        }
                        .onDisappear{
                            dopamineSystemAnimation = false
                        }
                        
                        // Stop box
                        VStack{
                            Text("Stop")
                                .padding(1)
                                .padding(.horizontal, 7)
                                .foregroundColor(stopAnimation ? .white : .clear)
                                .background(stopAnimation ? .black : .clear, in: Rectangle())
                                .cornerRadius(10)
                                .offset(y: 30)
                                .animation(.easeInOut(duration: 2), value: stopAnimation)
                        }
                        .onAppear{
                            stopAnimation = stop
                        }
                        .onDisappear{
                            stopAnimation = false
                        }
                        
                        // Questionmark
                        VStack{
                            Image(systemName: "questionmark.bubble.fill")
                                .foregroundColor(questionAnimation ? .gray : .clear)
                                .offset(x:20, y: -5)
                                .animation(.easeInOut(duration: 2).delay(1), value: questionAnimation)
                        }
                        .onAppear{
                            questionAnimation = question
                        }
                        .onDisappear{
                            questionAnimation = false
                        }
                        
                    }
                }
                VStack {
                    Text("Dapamine")
                        .padding()
                    HStack{
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(dopamineAnimation ? .yellow : .gray)
                            .scaleEffect(dopamineAnimation ? 1.5 : 1)
                            .animation(Animation.easeInOut(duration: 1).repeatForever().delay(0.3), value: dopamineAnimation)
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(dopamineAnimation ? .yellow : .gray)
                            .scaleEffect(dopamineAnimation ? 1.5 : 1)
                            .animation(Animation.easeInOut(duration: 1).repeatForever().delay(0.6), value: dopamineAnimation)
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(dopamineAnimation ? .yellow : .gray)
                            .scaleEffect(dopamineAnimation ? 1.5 : 1)
                            .animation(Animation.easeInOut(duration: 1).repeatForever().delay(0.9), value: dopamineAnimation)
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(dopamineAnimation ? .yellow : .gray)
                            .scaleEffect(dopamineAnimation ? 1.5 : 1)
                            .animation(Animation.easeInOut(duration: 1).repeatForever().delay(1.2), value: dopamineAnimation)
                    }
                    .foregroundColor(.gray)
                    .onAppear {
                        dopamineAnimation = dopamine
                    }
                    .onDisappear{
                        dopamineAnimation = false
                    }
                    
                }
                
                VStack{
                    Text("Mood")
                        .padding(.horizontal)
                        .padding(.bottom, 15)
                    ZStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 50, height: 50, alignment: .bottom)
                                .cornerRadius(15)
                                .scaleEffect(ourMoodAnimation ? 1.1 : 1)
                                .foregroundColor(ourMoodAnimation ? .yellow : .gray)
                                .animation(Animation.easeInOut(duration: 1).delay(1.2), value: ourMoodAnimation)
                            Image(systemName: "face.smiling")
                                .renderingMode(.template)
                                .foregroundStyle(ourMoodAnimation ? .black : .gray, .clear)
                                .font(.system(size:40))
                                .animation(.easeInOut(duration: 1).delay(1.2), value: ourMoodAnimation)
                            Text("Feel Good")
                                .foregroundColor(.yellow)
                                .offset(y:45)
                                .opacity(ourMoodAnimation && (Opioids == 0) ? 1 : 0)
                                .animation(.easeInOut(duration: 1).delay(1.2), value: ourMoodAnimation)
                        }
                        .offset(y:5)
                        .onAppear {
                            ourMoodAnimation = dopamine
                        }
                        .onDisappear{
                            ourMoodAnimation = false
                        }
                        
                        
                        //Question mark
                        VStack{
                            Image(systemName: "questionmark.bubble.fill")
                                .foregroundColor(questionAnimation ? .gray : .clear)
                                .offset(x:20, y: -30)
                                .animation(Animation.easeOut(duration: 2).delay(1), value: questionAnimation)
                        }
                        .onAppear{
                                questionAnimation = question
                        }
                        .onDisappear{
                            questionAnimation = false
                        }
                    }
                }

            }
        }
    }
}
