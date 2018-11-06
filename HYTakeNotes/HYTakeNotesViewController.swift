//
//  HYTakeNotesViewController.swift
//
//
//  Created by Roman Nazarkevych on 11/2/18.
//  Copyright © 2018 Roman Nazarkevych. All rights reserved.
//

import UIKit

class HYTakeNotesViewController: UIViewController {
    
    typealias CompletionHandler = (String) -> Void
    var completion: CompletionHandler = { _ in }
    
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var inputTextView: UITextView!
    @IBOutlet weak var placeholderLabel: UILabel!
    
    var initialText: String?
    var placeholder: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSaveButton()
        setupTextView()
    }
    
    @IBAction func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func save() {
        completion(inputTextView.text)
        dismiss()
    }
    
    func updatePlaceholderVisibility() {
        placeholderLabel.isHidden = (inputTextView.text.count > 0)
    }

    private func setupSaveButton() {
        saveButton.layer.cornerRadius = saveButton.frame.height / 2.0
    }
    
    private func setupTextView() {
        placeholderLabel.text = placeholder
        inputTextView.text = initialText
        inputTextView.delegate = self
        inputTextView.becomeFirstResponder()
        updatePlaceholderVisibility()
    }
}

extension HYTakeNotesViewController: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        updatePlaceholderVisibility()
    }
}
