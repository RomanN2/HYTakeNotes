# HYParentalGate

## Description

This is a very simple modal view controller that contains an input UITextView and two buttons to Save or Close the dialog. HYTakeNotes was created by inspiration of Twitter’s compose tweet screen.

## Screenshot
![HYParentalGate Example](https://raw.githubusercontent.com/RomanN2/HYTakeNotes/master/.github/Screenshot.png)

## Usage
``` swift
import HYTakeNotes

func takeNotes() {
  let vc = HYTakeNotes()
  vc.placeholder = "Type your notes here..."
  vc.initialText = "" // set the initial text if needed.
  vc.completion = { text in
    print(text)
  }
  self.present(vc, animated: true, completion: nil)
}
```

## License
HYTakeNotes is available under the MIT license. See the LICENSE file for more info.
