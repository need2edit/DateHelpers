import Foundation

extension Date {
    
    public func days(between other: Date) -> Int {
        return Calendar.current.dateComponents([.day], from: self, to: other).day ?? 0
    }
    
    public func months(between other: Date) -> Int {
        return Calendar.current.dateComponents([.month], from: self, to: other).month ?? 0
    }
    
    public func years(between other: Date) -> Int {
        return Calendar.current.dateComponents([.year], from: self, to: other).year ?? 0
    }
    
}
