//
//  playingCardDeck.swift
//  PlayingCard
//
//  Created by Lei Fu on 5/14/18.
//  Copyright © 2018 Lei Fu. All rights reserved.
//

import Foundation

struct PlayingCardDeck
{
    private(set) var cards = [PlayingCard]()
    
    init(){
        for suit in PlayingCard.Suit.all {
            for rand in PlayingCard.Rank.all {
                cards.append(PlayingCard(suit: suit, rank: rand))
                
            }
        }
    }
    mutating func draw() -> PlayingCard? {
        if cards.count > 0 {
            return cards.remove(at: cards.count.arc4random)
         } else {
            return nil
    
        }
    }
}
extension Int {
    var arc4random: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
            
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(abs(self))))
        } else {
            return 0
        }
    }
    
}
