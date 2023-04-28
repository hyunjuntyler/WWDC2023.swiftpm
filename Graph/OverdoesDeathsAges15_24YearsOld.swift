import SwiftUI
import Charts

struct OverdoesDeathsAges15_24YearsOld: View {
    
var body: some View {
        Chart{
            ForEach(allYoung, id: \.year) {
                BarMark(
                    x: .value("year", $0.year),
                    y: .value("Deaths", $0.Deaths),
                    width: 15
                )
                .foregroundStyle(by: .value("allYoung", "Total Overdose Deaths"))
                .cornerRadius(4)
            }
            ForEach(opioidYoung, id: \.year) {
                LineMark(
                    x: .value("year", $0.year),
                    y: .value("Deaths", $0.Deaths)
                )
                .foregroundStyle(by: .value("opioidYoung", "Any Opioid"))
                
                PointMark(
                    x: .value("year", $0.year),
                    y: .value("Deaths", $0.Deaths)
                )
                .foregroundStyle(by: .value("opioidYoung", "Any Opioid"))
            }
        }
        .chartForegroundStyleScale([
            "Total Overdose Deaths" : Color(.systemGray2),
            "Any Opioid" : Color.pink
        ])
        .chartLegend(position : .top)
        .frame(width: 200, height: 150)
        .chartXAxis {
            AxisMarks(preset: .aligned, values: .automatic())
        }
        .chartXScale(range: [20,150])
    }
}

struct OverdoesDeathsAges15_24YearsOld_Previews: PreviewProvider {
    static var previews: some View {
        OverdoesDeathsAges15_24YearsOld()
    }
}
