import UIKit

class DetailViewController: UIViewController{
    
    @IBOutlet weak var futDescription: UILabel!
    @IBOutlet weak var futL: UILabel!
    @IBOutlet weak var futImageView: UIImageView!
    @IBOutlet weak var futTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        futImageView.layer.cornerRadius = 8
        futImageView.layer.masksToBounds = true
        futImageView.contentMode = .scaleAspectFill
        futImageView.backgroundColor = .blue
    }
}

