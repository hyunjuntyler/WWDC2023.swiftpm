
import SwiftUI

struct helpAvailable: View {
    
    @Binding var page : Int
    @State private var animation = false
    @State private var isPresented : Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                VStack{
                    HStack {
                        Text(Image(systemName: "cross.fill"))
                            .foregroundColor(.green)
                            .font(.system(size:40))
                            .scaleEffect(animation ? 1.2 : 1)
                            .padding(.trailing)
                        Text(Image(systemName: "heart.fill"))
                            .foregroundColor(.red)
                            .font(.system(size:40))
                            .scaleEffect(animation ? 1.3 : 1)
                    }
                    .onAppear {
                        withAnimation(.easeInOut(duration: 1).repeatForever()) {
                            animation = true
                        }
                    }
                    .onDisappear {
                        animation = false
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height * 0.5)
                .background(Color.init(.systemGray6))
                VStack (alignment: .leading) {
                    VStack (alignment: .leading) {
                        Text("Preventing Opioids Addiction and Overdose")
                            .font(.title)
                            .bold()
                            .padding(.bottom)
                        Text("It's important to use opioids exactly as prescribed by a healthcare provider and safely dispose of any unused medication.")
                            .font(Font.title2)
                            .lineSpacing(10)
                            .padding(.bottom)
                        Text("Remember, it's never too late to start taking these steps to prevent addiction or overdose.")
                            .font(Font.title2)
                            .lineSpacing(10)
                            .padding(.bottom)
                    }
                    HStack{
                        Spacer()
                        VStack {
                            Button {
                                withAnimation {
                                    isPresented = true
                                }
                            } label: {
                                Text("\(Image(systemName: "phone.fill")) Help Resources")
                                    .font(.title2)
                                    .padding(.horizontal)
                            }
                            .buttonStyle(.bordered).tint(.green)
                            .cornerRadius(10)
                            .padding(.bottom, 75)
                            
                            Button {
                                withAnimation(.easeInOut){
                                    page = 0
                                }
                            } label: {
                                Text("Back to Start")
                                    .font(.title2)
                                    .padding(.horizontal)
                            }
                            .buttonStyle(.borderedProminent)
                            .cornerRadius(10)
                        }
                        Spacer()
                    }
                }
                .padding([.top, .leading, .trailing], 60)
                .frame(width: geometry.size.width, height: geometry.size.height * 0.5, alignment: .topLeading)
                .background(Color.init(.clear))
                .ignoresSafeArea()
            }
            .overlay{
                if isPresented {
                    GeometryReader { geometry in
                        ZStack {
                            Rectangle()
                                .frame(width: geometry.size.width, height: geometry.size.height)
                                .foregroundColor(.white)
                                .opacity(0.8)
                                .ignoresSafeArea(.all)
                            VStack {
                                VStack(alignment: .leading){
                                    Text("Help Resources")
                                        .font(.largeTitle)
                                        .bold()
                                        .foregroundColor(.green)
                                        .padding(.bottom)
                                    Text("If you or someone you know is struggling with opioid addiction, seek help from a healthcare professional or treatment center.")
                                        .lineSpacing(5)
                                        .padding(.bottom)
                                    ScrollView{
                                        VStack(alignment: .leading){
                                            Group{
                                                Text("United States")
                                                    .bold()
                                                    .font(.title3)
                                                    .padding(.bottom, 1)
                                                
                                                HStack (alignment: .center){
                                                    Text("1-800-662-HELP(4357)")
                                                    Text("The U.S. Substance Abuse and Mental Health Services Administration (SAMHSA)")
                                                        .font(.caption2)
                                                }
                                                .padding(.bottom, 5)
                                            }
                                            Group{
                                                Text("South Korea")
                                                    .bold()
                                                    .font(.title3)
                                                    .padding(.bottom, 1)
                                                
                                                HStack (alignment: .center){
                                                    Text("129")
                                                    Text("Health and Welfare Counseling Center of the Ministry of Health")
                                                        .font(.caption2)
                                                }
                                                HStack (alignment: .center){
                                                    Text("1899-0893")
                                                    Text("Korean Association Against Drug Abuse(KAADA)")
                                                        .font(.caption2)
                                                }
                                                .padding(.bottom, 5)
                                            }
                                            Group{
                                                Text("Australia")
                                                    .bold()
                                                    .font(.title3)
                                                    .padding(.bottom, 1)
                                                
                                                HStack (alignment: .center){
                                                    Text("1300 85 85 84")
                                                    Text("Alcohol and Drug Foundation (ADF)")
                                                        .font(.caption2)
                                                }
                                                .padding(.bottom, 5)
                                            }
                                            Group{
                                                Text("Germany")
                                                    .bold()
                                                    .font(.title3)
                                                    .padding(.bottom, 1)
                                                
                                                HStack (alignment: .center){
                                                    Text("0 18 05-31 30 31")
                                                    Text("Deutsche Hauptstelle für Suchtfragen (DHS)")
                                                        .font(.caption2)
                                                }
                                                .padding(.bottom, 5)
                                            }
                                            Group{
                                                Text("Italy")
                                                    .bold()
                                                    .font(.title3)
                                                    .padding(.bottom, 1)
                                                
                                                HStack (alignment: .center){
                                                    Text("800 186070")
                                                    Text("National Addiction and Doping Center")
                                                        .font(.caption2)
                                                }
                                                .padding(.bottom, 5)
                                            }
                                            Group{
                                                Text("United Kingdom")
                                                    .bold()
                                                    .font(.title3)
                                                    .padding(.bottom, 1)
                                                
                                                HStack (alignment: .center){
                                                    Text("0300 123 6600")
                                                    Text("Talk to Frank helpline")
                                                        .font(.caption2)
                                                }
                                                .padding(.bottom, 5)
                                            }
                                        }
                                    }
                                }
                                .padding()
                                Button {
                                    withAnimation {
                                        isPresented = false
                                    }
                                } label: {
                                    Text("Back")
                                        .font(.title3)
                                        .padding(.horizontal)
                                }
                                .buttonStyle(.bordered).tint(.green)
                                .cornerRadius(10)
                                .padding(.bottom)
                            }
                            .padding()
                            .frame(width: geometry.size.width * 0.7 , height: geometry.size.height * 0.5)
                            .background(Color.init(.systemGray6))
                            .cornerRadius(20)
                        }
                        .padding()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .cornerRadius(10)
                    }
                    .ignoresSafeArea(.all)
                }
            }
        }
    }
}
