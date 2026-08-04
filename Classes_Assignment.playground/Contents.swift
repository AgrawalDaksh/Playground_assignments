import UIKit

class Event {
    var eventName: String
    var location: String
    var date: String
    var organizer: String
    
    init(eventName: String, location: String, date: String, organizer: String) {
        self.eventName = eventName
        self.location = location
        self.date = date
        self.organizer = organizer
    }
    
    func scheduleEvent() {
        print("\(eventName) is scheduled for \(date)")
    }
    
    func rescheduledEvent(newDate: String) {
        date = newDate
        print("\(eventName) has been rescheduled to \(date)")
    }
    
    func displayInfo() {
        print("\(eventName) is happening on \(date) at \(location) and is organized by \(organizer)")
    }
}

class Satsang: Event {
    var speakerName: String
    var bhajanList: [String]
    var duration: Int
    
    init(eventName: String, location: String, date: String, organizer: String, speakerName: String, duration: Int) {
        self.speakerName = speakerName
        self.bhajanList = []
        self.duration = duration
        
        super.init(eventName: eventName, location: location, date: date, organizer: organizer)
    }
    
    func addBhajan(_ bhajanName: String) {
            bhajanList.append(bhajanName)
        }

        func displayBhajans() {
            print("Bhajans:")
            for bhajan in bhajanList {
                print("- \(bhajan)")
            }
        }

        override func displayInfo() {
            super.displayInfo()
            print("Speaker: \(speakerName)")
            print("Duration: \(duration) mins")
        }
}

class MeditationSession: Satsang {
    var meditationType: String

    init(eventName: String, location: String, date: String, organizer: String, speakerName: String, duration: Int, meditationType: String) {
        self.meditationType = meditationType

        super.init(eventName: eventName, location: location, date: date, organizer: organizer, speakerName: speakerName, duration: duration)
    }

    override func displayInfo() {
        super.displayInfo()
        print("Meditation Type: \(meditationType)")
    }
}

class Concert: Event {
    var performer: String
    var genre: String
    var ticketPrice: Double
    var seatsAvailable: Int

    init(eventName: String, location: String, date: String, organizer: String, performer: String, genre: String, ticketPrice: Double, seatsAvailable: Int) {

        self.performer = performer
        self.genre = genre
        self.ticketPrice = ticketPrice
        self.seatsAvailable = seatsAvailable

        super.init(eventName: eventName, location: location, date: date, organizer: organizer)
    }

    func bookTicket(count: Int) {
        if count <= seatsAvailable {
            seatsAvailable -= count
            print("\(count) ticket(s) booked.")
        } else {
            print("Not enough seats available.")
        }
    }

    func isSoldOut() -> Bool {
        return seatsAvailable == 0
    }

    override func displayInfo() {
        super.displayInfo()
        print("Performer: \(performer)")
        print("Genre: \(genre)")
        print("Ticket Price: ₹\(ticketPrice)")
        print("Seats Available: \(seatsAvailable)")
    }
}

class RockConcert: Concert {
    var bandName: String

    init(eventName: String, location: String, date: String, organizer: String, performer: String, genre: String, ticketPrice: Double, seatsAvailable: Int, bandName: String) {

        self.bandName = bandName

        super.init(eventName: eventName, location: location, date: date, organizer: organizer, performer: performer, genre: genre, ticketPrice: ticketPrice, seatsAvailable: seatsAvailable)
    }

    override func displayInfo() {
        super.displayInfo()
        print("Band Name: \(bandName)")
    }
}

print("------ Meditation Session ------")

let meditation = MeditationSession(eventName: "Morning Peace", location: "Pune", date: "10 Aug 2026", organizer: "Yoga Trust", speakerName: "Swami Vivek", duration: 90, meditationType: "Mindfulness"
)

meditation.scheduleEvent()
meditation.addBhajan("Om Jai Jagdish")
meditation.addBhajan("Raghupati Raghav")
meditation.displayBhajans()
meditation.displayInfo()

print("\n------ Rock Concert ------")

let rock = RockConcert(eventName: "Rock Night", location: "Mumbai", date: "20 September 2026", organizer: "Music Fest", performer: "The Rockers", genre: "Rock", ticketPrice: 3500, seatsAvailable: 500, bandName: "Thunder Band"
)

rock.scheduleEvent()
rock.bookTicket(count: 5)
rock.displayInfo()

if rock.isSoldOut() {
    print("Concert is Sold Out")
} else {
    print("Seats are still available")
}
