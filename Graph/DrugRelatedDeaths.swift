import SwiftUI

struct DrugRelatedDeaths: View {
    
    @State var pop1 = true
    
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .trim(from:0, to:0.77)
                    .stroke(lineWidth: 20)
                    .rotationEffect(Angle(degrees: 270))
                    .foregroundColor(.pink)
                Circle()
                    .trim(from:0, to:0.07)
                    .stroke(lineWidth: 20)
                    .rotationEffect(Angle(degrees: 270 + 360 * 0.77))
                    .foregroundColor(Color(.systemGray))
                Circle()
                    .trim(from:0, to:0.04)
                    .stroke(lineWidth: 20)
                    .rotationEffect(Angle(degrees: 270 + 360 * 0.84))
                    .foregroundColor(Color(.systemGray2))
                Circle()
                    .trim(from:0, to:0.04)
                    .stroke(lineWidth: 20)
                    .rotationEffect(Angle(degrees: 270 + 360 * 0.88))
                    .foregroundColor(Color(.systemGray3))

                Circle()
                    .trim(from:0, to:0.08)
                    .stroke(lineWidth: 20)
                    .rotationEffect(Angle(degrees: 270 + 360 * 0.92))
                    .foregroundColor(Color(.systemGray4))
                Text("77%")
                    .font(.title2)
            }
        }.frame(width:80, height: 80)
    }
    
    
}

struct DrugRelatedDeaths_Previews: PreviewProvider {
    static var previews: some View {
        DrugRelatedDeaths()
    }
}
