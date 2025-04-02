//
//  StoryLogic.swift
//  Monster Quest
//
//  Created by Jonathan Cheth on 4/1/25.
//

struct StoryLogic {
    var storyNumber = 0
    
    let stories = [
        Story(
            title: "You awaken in a misty graveyard, surrounded by ancient tombstones. A chilling howl echoes in the distance. Before you, two paths emerge—one leading into a dense, dark forest, the other to an eerie, glowing cave entrance.",
            choice1: "Venture into the forest.", choice1Destination: 1,
            choice2: "Enter the mysterious cave.", choice2Destination: 2
        ),
        Story(
            title: "The forest is silent except for the rustling of leaves. Suddenly, a monstrous shadow moves between the trees. A pair of glowing red eyes lock onto you. It’s a vampire, and it’s watching your every move.",
            choice1: "Run deeper into the forest.", choice1Destination: 3,
            choice2: "Stand your ground and confront it.", choice2Destination: 4
        ),
        Story(
            title: "The cave walls are lined with strange symbols, glowing faintly. As you step inside, a low growl rumbles from the depths. A massive, clawed beast emerges, its eyes glowing with fury.",
            choice1: "Try to talk to the beast.", choice1Destination: 5,
            choice2: "Prepare to fight!", choice2Destination: 6
        ),
        Story(
            title: "You run deeper into the forest, but the vampire is faster. It appears in front of you in an instant, fangs bared.",
            choice1: "Beg for mercy.", choice1Destination: 7,
            choice2: "Try to escape again.", choice2Destination: 8
        ),
        Story(
            title: "You raise your fists, ready to fight, but the vampire only smirks. 'Interesting… perhaps you’re stronger than you seem,' it says. It offers you a deal—join its legion, or face the consequences.",
            choice1: "Join the vampire's legion.", choice1Destination: 9,
            choice2: "Refuse and prepare to fight.", choice2Destination: 10
        ),
        Story(
            title: "The beast tilts its head, intrigued. 'Few dare to speak to me,' it growls. 'Perhaps you are different.' It offers you guidance through the monster-infested lands.",
            choice1: "Accept its guidance.", choice1Destination: 11,
            choice2: "Politely decline and continue alone.", choice2Destination: 12
        ),
        Story(
            title: "You charge at the beast, weapon in hand. It lets out a deafening roar and attacks with monstrous strength. The battle is fierce, but you are outmatched.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "The vampire laughs. 'Pathetic.' Darkness engulfs you as the last thing you see is its sharp fangs closing in.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "You try to flee again, but the vampire’s shadow engulfs you. When you open your eyes, you are no longer human—you have become one of them.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "You pledge loyalty to the vampire. It grins, placing a cold hand on your shoulder. 'Welcome to the eternal night,' it whispers.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "You refuse the vampire’s offer. Its smile fades, replaced with fury. The last thing you hear is the sound of your own heartbeat slowing.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "With the beast as your guide, you travel through the monster realm, learning its secrets. Perhaps you belong here more than you thought.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "You continue on alone, but the darkness grows heavier. Without a guide, you are lost, and the creatures lurking in the shadows close in.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
    
    
}
