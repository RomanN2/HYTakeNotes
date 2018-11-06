//
//  UIInitializer.swift
//  HYTakeNotes
//
//  Created by Roman Nazarkevych on 11/6/18.
//

import UIKit

class UIInitializer: NSObject {
    
    func initUI(for viewController: HYTakeNotes) {
        initCloseButton(for: viewController)
        initSaveButton(for: viewController)
        initTextView(for: viewController)
        initPlaceholderLabel(for: viewController)
    }
    
    private func initCloseButton(for viewController: HYTakeNotes) {
        let frame = CGRect(x: 8, y: 28, width: 34, height: 34)
        let button = UIButton(frame: frame)
        button.setImage(UIImage(named: "HYCloseDialog"), for: .normal)
        button.addTarget(viewController, action: #selector(HYTakeNotes.cancel), for: .touchUpInside)
        viewController.view.addSubview(button)
    }
    
    private func initSaveButton(for viewController: HYTakeNotes) {
        let frame = CGRect(x: viewController.view.frame.width - 92, y: 32, width: 80, height: 30)
        let button = UIButton(frame: frame)
        button.setTitle("Save", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.backgroundColor = UIColor(red: 74/255, green: 144/255, blue: 226/255, alpha: 1)
        button.layer.cornerRadius = button.frame.height / 2.0
        button.addTarget(viewController, action: #selector(HYTakeNotes.save), for: .touchUpInside)
        viewController.view.addSubview(button)
    }
    
    private func initTextView(for viewController: HYTakeNotes) {
        let frame = CGRect(x: 14, y: 76, width: viewController.view.frame.width-28, height: 200)
        let textView = UITextView(frame: frame)
        textView.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        textView.delegate = viewController
        textView.text = viewController.initialText
        viewController.view.addSubview(textView)
        viewController.inputTextView = textView
    }
    
    private func initPlaceholderLabel(for viewController: HYTakeNotes) {
        let frame = CGRect(x: 20, y: 81, width: viewController.view.frame.width-40, height: 21)
        let label = UILabel(frame: frame)
        label.textColor = UIColor.lightGray
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = viewController.placeholder
        viewController.view.addSubview(label)
        viewController.placeholderLabel = label
    }
}
