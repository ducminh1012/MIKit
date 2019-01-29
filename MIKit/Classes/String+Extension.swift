import Foundation

public extension String {
    public func toDate() -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy" //Your date format
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT+0:00")
        let date = dateFormatter.date(from: self)
        
        return date ?? Date()
    }
    
    public func toISODate() -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let date = dateFormatter.date(from: self)
        
        return date ?? Date()
    }
    
    public func toDate(_ format: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format //Your date format
        let date = dateFormatter.date(from: self)
        
        return date ?? Date()
    }
}
