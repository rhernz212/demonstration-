struct User {
    let name: String
    let jobTitle: String
    var pay: Double
    var email: String

    /// Prints to the user information about the employee
    func introduction() {

        print(" \(name) works for Helzberg as an \(jobTitle). \n Their pay rate is $\(pay) an hour and their work email is \(email).\n")

    }
}

let employee1 = User(name: "Ruben", jobTitle: "Office Associate", pay: 12.0, email: "rhernandez@helzberg.com")
let employee2 = User(name: "Liz", jobTitle: "Office Associate", pay: 11.50, email: "lsierra@helzberg.com")

employee1.introduction()

employee2.introduction()

// Treehouse Example Game with OOP

struct Point { // Creating a blueprint from which we can create many different points
    let x: Int
    let y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    /// Returns the surrounding points in range of
    /// the current one
    func points(inRange range: Int = 1) -> [Point] {
        var results = [Point]()
        
        let lowerBoundOfXRange = x - range
        let upperBoundOfXRange = x + range
        
        let lowerBoundOfYRange = y - range
        let upperBoundOfYRange = y + range
        
        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange {
            for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange {
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
                results.append(coordinatePoint)
            }
        }
        
        return results
        
    }
}

let coordinatePoint = Point(x: 0, y: 0) // Instance of a struct
coordinatePoint.points(inRange: 1) // calling an instance method

class Enemy {
    var life: Int = 2
    let position: Point
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func decreaseLife(by factor: Int) {
        life -= factor
    }
}

class Tower {
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }

    func fire(at enemy: Enemy) {
        if isInRange(of: enemy) {
            enemy.decreaseLife(by: strength)
            print("Gotcha!")
        } else {
            print("Damn, out of range.")
        }
    }
    
    func isInRange(of enemy: Enemy) -> Bool {
        let availablePositions = position.points(inRange: range)
        
        for point in availablePositions {
            if point.x == enemy.position.x && point.y == enemy.position.y {
                return true
            }
        }
        
        return false
    }
    
}

let firstTower = Tower(x: 0, y: 0)
let enemy = Enemy(x: 2, y: 2)
firstTower.fire(at: enemy)
