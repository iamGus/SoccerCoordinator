// SoccerCoordinator by Gus

// Storing each players data in their own collection


let player1: [String: Any] = ["NAME": "Joe Smith", "HEIGHT": "42", "EXP": "Yes", "GUARDIAN": "Jim and Jan Smith"]
let player2: [String: Any] = ["NAME": "Jill Tanner", "HEIGHT": "36", "EXP": "Yes", "GUARDIAN": "Clara Tanner"]
let player3: [String: Any] = ["NAME": "Bill Bon", "HEIGHT": "43", "EXP": "Yes", "GUARDIAN": "Sara and Jenny Bon"]
let player4: [String: Any] = ["NAME": "Eva Gordon", "HEIGHT": "45", "EXP": "No", "GUARDIAN": "Wendy and Mike Gordon"]
let player5: [String: Any] = ["NAME": "Matt Gill", "HEIGHT": "40", "EXP": "No", "GUARDIAN": "Charles and Sylvia Gill"]
let player6: [String: Any] = ["NAME": "Kimmy Stein", "HEIGHT": "41", "EXP": "No", "GUARDIAN": "Bill and Hillary Stein"]
let player7: [String: Any] = ["NAME": "Sammy Adams", "HEIGHT": "45", "EXP": "No", "GUARDIAN": "Jeff Adams"]
let player8: [String: Any] = ["NAME": "Karl Saygan", "HEIGHT": "42", "EXP": "Yes", "GUARDIAN": "Heather Bledsoe"]
let player9: [String: Any] = ["NAME": "Suzane Greenberg", "HEIGHT": "44", "EXP": "Yes", "GUARDIAN": "Henrietta Dumas"]
let player10: [String: Any] = ["NAME": "Sal Dali", "HEIGHT": "41", "EXP": "No", "GUARDIAN": "Gala Dali"]
let player11: [String: Any] = ["NAME": "Joe Kavalier", "HEIGHT": "39", "EXP": "No", "GUARDIAN": "Sam and Elaine Kavalier"]
let player12: [String: Any] = ["NAME": "Ben Finkelstein", "HEIGHT": "44", "EXP": "No", "GUARDIAN": "Aaron and Jill Finkelstein"]
let player13: [String: Any] = ["NAME": "Diego Soto", "HEIGHT": "41", "EXP": "Yes", "GUARDIAN": "Robin and Sarika Soto"]
let player14: [String: Any] = ["NAME": "Chloe Alaska", "HEIGHT": "47", "EXP": "No", "GUARDIAN": "David and Jamie Alaska"]
let player15: [String: Any] = ["NAME": "Arnold Willis", "HEIGHT": "43", "EXP": "No", "GUARDIAN": "Claire Willis"]
let player16: [String: Any] = ["NAME": "Phillip Helm", "HEIGHT": "44", "EXP": "Yes", "GUARDIAN": "Thomas Helm and Eva Jones"]
let player17: [String: Any] = ["NAME": "Les Clay", "HEIGHT": "42", "EXP": "Yes", "GUARDIAN": "Wynonna Brown"]
let player18: [String: Any] = ["NAME": "Herschel Krustofski", "HEIGHT": "45", "EXP": "Yes", "GUARDIAN": "Hyman and Rachel Krustofski"]

// One collection for all players data

var players = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

/*
 ---------------------------------------------------
 First to split players with and without experience
 ---------------------------------------------------
*/

// Empty container to split players
var hasExp = [[String: Any]]()
var noExp = [[String: Any]]()

// Counting number of players in container for loop
var countSort = 1

// Sorting players into has or hasnot experience containers loop
while countSort <= players.count {
for player in players {
    let experiance = player["EXP"] as! String
    switch experiance {
    case "Yes": hasExp.append(player)
    case "No": noExp.append(player)
    default: break
        }
    countSort += 1
    }
}

/*
 ---------------------------------------------------------------
 Splitting both experience lists up evengly into the three teams
 ---------------------------------------------------------------
*/

// Empty array for three soccer teams

var teamSharks = [[String: Any]]()
var teamDragons = [[String: Any]]()
var teamRaptors = [[String: Any]]()
var hasExpIndex = 0
var noExpIndex = 0

// While loop to split has experience into 3 teams

while hasExpIndex < hasExp.count {
    teamSharks.append(hasExp[hasExpIndex])
    hasExpIndex += 1
    teamDragons.append(hasExp[hasExpIndex])
    hasExpIndex += 1
    teamRaptors.append(hasExp[hasExpIndex])
    hasExpIndex += 1
}

// While loop to split no experience into 3 teams

while noExpIndex < noExp.count {
    teamSharks.append(noExp[noExpIndex])
    noExpIndex += 1
    teamDragons.append(noExp[noExpIndex])
    noExpIndex += 1
    teamRaptors.append(noExp[noExpIndex])
    noExpIndex += 1
}

/* 
 -----------------------
 logic to print letters
 -----------------------
*/

var letters = [String]()

// Make and put team Dragons letters into letters array
for eachPlayerLetter in teamDragons {
    let playerName = eachPlayerLetter["NAME"] as! String
    let playerGuardian = eachPlayerLetter["GUARDIAN"] as! String
        letters.append(" Dear \(playerGuardian), \n \n I would like to inform you that \(playerName) has been placed in the awesome soccer team of: Dragons. Can they please attend their first team practice on March the 17th at 1pm. \n \n Regards, Gus \n \n")
}

// Make and put team Sharks letters into letters array
for eachPlayerLetter in teamSharks {
    let playerName = eachPlayerLetter["NAME"] as! String
    let playerGuardian = eachPlayerLetter["GUARDIAN"] as! String
    letters.append(" Dear \(playerGuardian), \n \n I would like to inform you that \(playerName) has been placed in the awesome soccer team of: Sharks. Can they please attend their first team practice on March the 17th at 3pm. \n \n Regards, Gus \n \n")
}

// Make and put team Raptors letters into letters array
for eachPlayerLetter in teamRaptors {
    let playerName = eachPlayerLetter["NAME"] as! String
    let playerGuardian = eachPlayerLetter["GUARDIAN"] as! String
    letters.append(" Dear \(playerGuardian), \n \n I would like to inform you that \(playerName) has been placed in the awesome soccer team of: Raptors. Can they please attend their first team practice on March the 18th at 1pm. \n \n Regards, Gus \n \n")
}

// Print each player letter in letters array

for printAll in letters {
    print(printAll)
}


