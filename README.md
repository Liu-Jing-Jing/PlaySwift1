# PlaySwift1
- initial swift test
20100717Chris Lattner <clattner@apple.com>Chris Lattner

- initial checkin, nothing much to see here.
20100718Chris Lattner <clattner@apple.com>Chris Lattner

- 5e88a  sketch out lexer and token interfaces.
20100718Chris Lattner <clattner@apple.com>Chris Lattner

- consolidate lexer stuff into the Parser lib.
20100718Chris Lattner <clattner@apple.com>Chris Lattner


## Xcode 6 beta3 changes
- Array has been completely redesigned to have full value semantics to match the behavior of Dictionary and String. Now a `let` array is completely immutable, and a `var` array is completely mutable.
- Syntax “sugar” for Array and Dictionary has changed. Arrays are declared using [Int] as short hand for Array<Int>, instead of Int[]. Similarly, Dictionary uses [Key: Value] for Dictionary<Key, Value>.
- The half-open range operator has been changed from .. to ..< to make it more clear alongside the ... operator for closed ranges.
