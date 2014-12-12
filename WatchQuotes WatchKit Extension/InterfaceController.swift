//
//  InterfaceController.swift
//  WatchQuotes WatchKit Extension
//
//  Created by Kevin on 12/12/2014.
//  Copyright (c) 2014 Kevin Py. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

	@IBOutlet weak var quoteText: WKInterfaceLabel!
	@IBOutlet weak var quoteBTN: WKInterfaceButton!
	
	var quotes = [
		"Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma - which is living with the results of other people's thinking. Don't let the noise of others' opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.",
		"For the past 33 years, I have looked in the mirror every morning and asked myself: 'If today were the last day of my life, would I want to do what I am about to do today?' And whenever the answer has been 'No' for too many days in a row, I know I need to change something.",
		"Stay hungry, stay foolish.",
		"Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work. And the only way to do great work is to love what you do. If you haven't found it yet, keep looking. Don't settle. As with all matters of the heart, you'll know when you find it."
	];
	
    override init(context: AnyObject?) {
        super.init(context: context)
        NSLog("%@ init", self)
    }

	@IBAction func BTNNext() {
		
		var randomQuote: Int = Int(arc4random()) % quotes.count
		quoteText.setText(quotes[randomQuote])
		
	}
}
