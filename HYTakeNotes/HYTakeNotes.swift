//
//  HYTakeNotesViewController.swift
//
//
//  Created by Roman Nazarkevych on 11/2/18.
//  Copyright © 2018 Roman Nazarkevych. All rights reserved.
//

import UIKit

public class HYTakeNotes: UIViewController, UITextViewDelegate {
    
    public typealias CompletionHandler = (String) -> Void
    public var completion: CompletionHandler = { _ in }
    
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var inputTextView: UITextView!
    @IBOutlet weak var placeholderLabel: UILabel!
    
    public var initialText: String?
    public var placeholder: String?
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setupSaveButton()
        setupTextView()
    }
    
    @IBAction func dismiss() {
        inputTextView.resignFirstResponder()
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func save() {
        inputTextView.resignFirstResponder()
        completion(inputTextView.text)
        self.dismiss(animated: true, completion: nil)
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
    
    public func textViewDidChange(_ textView: UITextView) {
        updatePlaceholderVisibility()
    }
}
