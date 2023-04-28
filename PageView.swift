//
//  PageView.swift
//  My App
//
//  Created by 김현준 on 2023/04/11.
//

import SwiftUI

struct PageView: View {
    
    @State private var page = 0
    @State private var isPresented : Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                TabView(selection: $page) {
                    Group{
                        Opioids(page: $page, isPresented: $isPresented).tag(0)
                        Pain().tag(1)
                        PainOpioids().tag(2)
                        Dopamine().tag(3)
                        DopamineStopper().tag(4)
                        DopamineOpioids().tag(5)
                        DopamineMoreOpioids().tag(6)
                        DopamineWithoutOpioids().tag(7)
                        helpAvailable(page: $page).tag(8)
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
                                            Text("Congratulations on taking the First Step!")
                                                .font(.title2)
                                                .bold()
                                                .padding(.bottom, 30)
                                                .padding(.top)
                                            HStack{
                                                Image(systemName: "pills")
                                                    .font(.title)
                                                    .padding(.trailing)
                                                    .foregroundColor(.pink)
                                                Text("This represent Opioids.\nLet's learn about opioids safely with this app.")
                                            }
                                            .padding(.bottom)
                                            
                                            HStack{
                                                ZStack{
                                                    Image(systemName: "ipad")
                                                        .symbolRenderingMode(.monochrome)
                                                        .font(.largeTitle)
                                                    Image(systemName: "hand.point.up")
                                                }
                                                .foregroundColor(.pink)
                                                .padding(.trailing)
                                                Text("Swipe left or right to navigate and learn.")
                                            }
                                            .padding(.leading, 3)
                                            .padding(.bottom)
                                        }
                                        Button {
                                            withAnimation {
                                                isPresented = false
                                            }
                                        } label: {
                                            Text("Countinue")
                                                .font(.title3)
                                                .padding(.horizontal, 10)
                                        }
                                        .buttonStyle(.bordered).tint(.pink)
                                        .cornerRadius(10)
                                    }
                                    .padding()
                                    .frame(width: geometry.size.width * 0.7 , height: geometry.size.height * 0.3)
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
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
            }
        }
    }
}
