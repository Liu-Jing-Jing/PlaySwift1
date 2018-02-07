enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Wight, Nine, Ten
    case Jack, Queen, King
    
    func simpleDescrition() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.Ace
let aceRawValue = ace.rawValue

func compareTwoRankValueWith(first: Rank, second: Rank) -> Int{
    if first >= second {
        return first.rawValue
    }
    else 
    {
        return second.rawValue   
    }
}
if let convertedRank = Rank.fromRaw(3) {
    let threeDescription = convertedRank.simpleDescription()    
}

// Enum的使用
// enumeration
enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts
            return "hearts"
        case .Diamonds
            return "diamonds"
        case .Clubs
            return "clubs"
        }
    }
}