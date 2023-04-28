
import SwiftUI

struct Opioids: View {
    
    @Binding var page : Int
    @Binding var isPresented : Bool
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0){
                VStack(alignment: .leading){
                    Text("How Opioids Affect the Brain")
                        .font(.system(size: 40))
                        .bold()
                        .padding(.bottom, 10)
                    VStack(alignment: .leading){
                        HStack(alignment: .top){
                            Image(systemName: "exclamationmark.triangle.fill")
                                .foregroundColor(.yellow)
                            Text("Drugs can kill. Misusing opioid painkillers such as oxycodone, fentanyl, and morphine can result in addiction, overdose, and long-term damage to the body and brain.")
                                .lineSpacing(7)
                        }
                    }
                }
                .frame(width:geometry.size.width * 0.88 + 20, height: geometry.size.height * 0.12, alignment: .topLeading)
                
                VStack(alignment: .center){
                    VStack(alignment: .leading){
                        Text("U.S. Drug Overdose Deaths, All Ages")
                            .font(.title3)
                            .bold()
                            .padding(.bottom, 1)
                        HStack{
                            Text(Image(systemName:"arrow.up.circle"))
                                .font(.title)
                            Text("Drug overdose deaths in 2021 doubled since 2015 to 106,699. Opioid-related deaths incrased by 2.4 times during this period.")
                                .font(.subheadline)
                        }
                    }
                    .padding([.leading,.trailing], 35)
                    VStack {
                        OverdoseDeaths()
                            .offset(x:10)
                        Text("National Institute on Drug Abuse (NIDA)")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                }
                .frame(width:geometry.size.width * 0.88 + 20, height: geometry.size.height * 0.3)
                .background(Color.init(.systemGray6))
                .cornerRadius(20)
                .padding(.bottom, 20)
                
                HStack(spacing: 0){
                    VStack(alignment: .center){
                        VStack(alignment: .leading){
                            Text("Drug related deaths")
                                .font(.title3)
                                .bold()
                                .padding(.bottom, 1)
                            Text("Opioids were responsible for 77% drug related Deaths.")
                                .font(.subheadline)
                        }
                        .padding([.leading,.trailing], 35)
                        VStack{
                            DrugRelatedDeaths()
                                .frame(width: 200, height: 150)
                            Text("United Nations Office on Drugs and Crime (UNODC)")
                                .font(.caption2)
                                .foregroundColor(.gray)
                        }
                    }
                    .frame(width:geometry.size.width * 0.440, height: geometry.size.height * 0.3)
                    .background(Color.init(.systemGray6))
                    .cornerRadius(20)
                    .padding(.trailing, 20)
                    .padding(.bottom)
                    
                    VStack(alignment: .center){
                        VStack(alignment: .leading){
                            Text("U.S. Youth Overdose Deaths")
                                .font(.title3)
                                .bold()
                                .padding(.bottom, 1)
                            
                            Text("Drug overdose deaths are increasing across all ages, including aged 15-24.")
                                .font(.subheadline)
                        }
                        .padding([.leading,.trailing], 30)
                        VStack{
                            OverdoesDeathsAges15_24YearsOld()
                            Text("National Institute on Drug Abuse (NIDA)")
                                .font(.caption2)
                                .foregroundColor(.gray)
                        }
                    }
                    .frame(width:geometry.size.width * 0.440, height: geometry.size.height * 0.3)
                    .background(Color.init(.systemGray6))
                    .cornerRadius(20)
                    .padding(.bottom)
                }
                VStack {
                    VStack(alignment: .leading){
                        HStack(alignment: .top){
                            Image(systemName: "exclamationmark.circle.fill")
                            Text("Knowing how opioids affect brain can help prevent addiction and other side effects.")
                        }
                    }
                    .font(.body)
                    .frame(width:geometry.size.width * 0.88 + 20, height: geometry.size.height * 0.05, alignment: .topLeading)
                    
                    Button {
                        withAnimation(.easeInOut(duration: 1)){
                            page = 1
                            isPresented = true
                        }
                    } label: {
                        Text("Get Started")
                            .font(.title2)
                            .padding(.horizontal)
                    }
                    .buttonStyle(.borderedProminent)
                    .cornerRadius(10)
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}
