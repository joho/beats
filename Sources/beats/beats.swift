import Foundation

struct beats {
    func atUnix(unixTime: Double) -> Int {
        let date = Date(timeIntervalSince1970: unixTime)
        return atDate(date: date)
    }

    func atNow() -> Int {
        return atDate(date: Date())
    }

    func atDate(date: Date) -> Int {
        var cal = Calendar.current;
        cal.timeZone = TimeZone(identifier: "UTC")!

        var hours = cal.component(.hour, from: date)
        let minutes = cal.component(.minute, from: date)
        let seconds = cal.component(.second, from: date)

        hours = (hours == 23) ? 0 : hours + 1

        // (UTC+1seconds + (UTC+1minutes * 60) + (UTC+1hours * 3600)) / 86.4
        let timeInSeconds = seconds + (minutes * 60) + (hours * 3600)

        let secondsPerBeat = 86.4

        let beats = Double(timeInSeconds) / secondsPerBeat

        let result = Int(floor(beats))

        return result
    }
}
