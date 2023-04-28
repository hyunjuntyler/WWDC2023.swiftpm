import Foundation

let allYoung = [
    (year: year(2015), Deaths: 4235),
    (year: year(2016), Deaths: 5376),
    (year: year(2017), Deaths: 5455),
    (year: year(2018), Deaths: 4633),
    (year: year(2019), Deaths: 4777),
    (year: year(2020), Deaths: 7095),
    (year: year(2021), Deaths: 7426),
]

let opioidYoung = [
    (year: year(2015), Deaths: 3082),
    (year: year(2016), Deaths: 4027),
    (year: year(2017), Deaths: 4094),
    (year: year(2018), Deaths: 3618),
    (year: year(2019), Deaths: 3725),
    (year: year(2020), Deaths: 5986),
    (year: year(2021), Deaths: 6312)
]

let all = [
    (year: year(1999), Deaths: 16849),
    (year: year(2000), Deaths: 17415),
    (year: year(2001), Deaths: 19394),
    (year: year(2002), Deaths: 23518),
    (year: year(2003), Deaths: 25785),
    (year: year(2004), Deaths: 27424),
    (year: year(2005), Deaths: 29813),
    (year: year(2006), Deaths: 34425),
    (year: year(2007), Deaths: 36010),
    (year: year(2008), Deaths: 36450),
    (year: year(2009), Deaths: 37004),
    (year: year(2010), Deaths: 38329),
    (year: year(2011), Deaths: 41340),
    (year: year(2012), Deaths: 41502),
    (year: year(2013), Deaths: 43982),
    (year: year(2014), Deaths: 47055),
    (year: year(2015), Deaths: 52404),
    (year: year(2016), Deaths: 63632),
    (year: year(2017), Deaths: 70237),
    (year: year(2018), Deaths: 67367),
    (year: year(2019), Deaths: 70630),
    (year: year(2020), Deaths: 91799),
    (year: year(2021), Deaths: 106699),
]

let opioid = [
    (year: year(1999), Deaths: 8050),
    (year: year(2000), Deaths: 8047),
    (year: year(2001), Deaths: 9496),
    (year: year(2002), Deaths: 11920),
    (year: year(2003), Deaths: 12940),
    (year: year(2004), Deaths: 13756),
    (year: year(2005), Deaths: 14918),
    (year: year(2006), Deaths: 17545),
    (year: year(2007), Deaths: 18516),
    (year: year(2008), Deaths: 19582),
    (year: year(2009), Deaths: 20422),
    (year: year(2010), Deaths: 21089),
    (year: year(2011), Deaths: 22784),
    (year: year(2012), Deaths: 23166),
    (year: year(2013), Deaths: 25052),
    (year: year(2014), Deaths: 28647),
    (year: year(2015), Deaths: 33091),
    (year: year(2016), Deaths: 42249),
    (year: year(2017), Deaths: 47600),
    (year: year(2018), Deaths: 46802),
    (year: year(2019), Deaths: 49860),
    (year: year(2020), Deaths: 68630),
    (year: year(2021), Deaths: 80411)
]


func year(_ year: Int = 1) -> Date {
    Calendar.current.date(from: .init(year: year)) ?? Date()
}
