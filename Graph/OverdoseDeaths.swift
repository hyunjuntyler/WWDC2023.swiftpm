
import SwiftUI
import Charts

struct OverdoseDeaths: View {
        
    var body: some View {
            Chart{
                ForEach(all, id: \.year) {
                    BarMark(
                        x: .value("year", $0.year),
                        y: .value("Deaths", $0.Deaths),
                        width: 15
                    )
                    .foregroundStyle(by: .value("all", "Total Overdose Deaths"))
                    .cornerRadius(4)
                }
                ForEach(opioid, id: \.year) {
                    LineMark(
                        x: .value("year", $0.year),
                        y: .value("Deaths", $0.Deaths)
                    )
                    .foregroundStyle(by: .value("opioid", "Any Opioid"))
                    
                    PointMark(
                        x: .value("year", $0.year),
                        y: .value("Deaths", $0.Deaths)
                    )
                    .foregroundStyle(by: .value("opioid", "Any Opioid"))
                }
            }
            .chartForegroundStyleScale([
                "Total Overdose Deaths" : Color(.systemGray2),
                "Any Opioid" : Color.pink
            ])
            .chartLegend(position : .top)
            .frame(width: 500, height: 150)
            .chartXAxis {
                AxisMarks(preset: .aligned, values: .automatic(desiredCount: 9))
            }
            .chartXScale(range: [15,440])
            
            .chartYAxis {
                AxisMarks(values: [0,50000,100000])
            }
            .chartYScale(domain: [0,100000])
        }
}



struct OverdoseDeaths_Previews: PreviewProvider {
    static var previews: some View {
        OverdoseDeaths()
    }
}
