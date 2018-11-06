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
    
    var inputTextView: UITextView!
    var placeholderLabel: UILabel!
    
    public var initialText: String?
    public var placeholder: String?
    
    override public func loadView() {
        self.view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .white
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        UIInitializer().initUI(for: self)
        inputTextView.becomeFirstResponder()
        updatePlaceholderVisibility()
    }
    
    @objc func cancel() {
        inputTextView.resignFirstResponder()
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func save() {
        inputTextView.resignFirstResponder()
        completion(inputTextView.text)
        self.dismiss(animated: true, completion: nil)
    }
    
    func updatePlaceholderVisibility() {
        placeholderLabel.isHidden = (inputTextView.text.count > 0)
    }
    
    public func textViewDidChange(_ textView: UITextView) {
        updatePlaceholderVisibility()
    }
}
