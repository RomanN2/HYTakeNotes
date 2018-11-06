//
//  ViewController.swift
//  TakeNotesExample
//
//  Created by Roman Nazarkevych on 11/6/18.
//  Copyright © 2018 1. All rights reserved.
//

import UIKit
import HYTakeNotes

class ViewController: UIViewController {

    @IBAction func takeNotes() {
        let vc = HYTakeNotes()
        vc.placeholder = "Type your notes here..."
        vc.initialText = "" // set the initial text if needed.
        vc.completion = { text in
            print(text)
        }
        self.present(vc, animated: true, completion: nil)
    }
}

