//
//  Story.swift
//  Storytelling
//
//  Created by Le Gia Khanh on 7/7/26.
//

struct Story{
    var story: String
    var choicesIndices = [String?: Int?]()

    init(story: String, choice1: String = "THE", choice2: String = "END", nextChoice1: Int? = nil, nextChoice2: Int? = nil){
        self.story = story
        choicesIndices[choice1] = nextChoice1
        choicesIndices[choice2] = nextChoice2
    }
}
