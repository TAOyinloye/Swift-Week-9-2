

import UIKit

class ViewController: UIViewController {

    
    //use lazy so it is only initialised the first time it is needed
    lazy private var phraseMaker = LiskovPhraseMaker()
    
    @IBOutlet weak var typeTextField: UITextField!
    
    @IBOutlet weak var subtypeTextField: UITextField!
    
    @IBOutlet weak var phraseLabel: UILabel!
    
    @IBAction func viewPhrasePressed(_ sender: Any) {
        phraseMaker.set(type:typeTextField.text!, subtype: subtypeTextField.text!)
        
        phraseLabel.text = phraseMaker.modifiedLiskovPhrase()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

