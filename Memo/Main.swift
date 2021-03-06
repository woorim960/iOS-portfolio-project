import UIKit

class Main: UIViewController, UITableViewDelegate, UITableViewDataSource {

// MARK: - Variable
    var MemoData = [String]()
// Variable_End
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
// MARK: - Table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        MemoData = UserDefaults.standard.object(forKey: "MemoData") as? [String] ?? [String]()
        
        return MemoData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MainCell
        
        MemoData = UserDefaults.standard.object(forKey: "MemoData") as? [String] ?? [String]()
        Cell.titleLabel.text = MemoData[indexPath.row]
        
        return Cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let MemoNumber = indexPath.row
        UserDefaults.standard.set(MemoNumber, forKey: "MemoNumber")
        
        self.performSegue(withIdentifier: "ToRecord", sender: self)
    }
// Table_End
    
    
// MARK: - Action
    @IBAction func Add(_ sender: Any) {
        
        UserDefaults.standard.set(-1, forKey: "MemoNumber")
    }
// Action_End
    
    
}

