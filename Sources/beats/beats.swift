import Foundation

class beats {
    let date: Date

    init(date: Date = Date()){
        self.date = date
    }

    func int() -> Int {
        var cal = Calendar.current;
        cal.timeZone = TimeZone(identifier: "UTC")!

        var hours = cal.component(.hour, from: self.date)
        let minutes = cal.component(.minute, from: self.date)
        let seconds = cal.component(.second, from: self.date)

        hours = (hours == 23) ? 0 : hours + 1

        // (UTC+1seconds + (UTC+1minutes * 60) + (UTC+1hours * 3600)) / 86.4
        let timeInSeconds = seconds + (minutes * 60) + (hours * 3600)

        let secondsPerBeat = 86.4

        let beats = Double(timeInSeconds) / secondsPerBeat

        let result = Int(floor(beats))

        return result
    }

    func string() -> String {
        return String(format: "@%03d", int())
    }

}
