import UIKit

class DetailViewController: UIViewController{
    
    @IBOutlet weak var futImageView: UIImageView!
    @IBOutlet weak var futTitle: UILabel!
    @IBOutlet weak var futL: UILabel!
    @IBOutlet weak var futDescription: UILabel!
    
    var fut: Fut!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        futImageView.layer.cornerRadius = 8
        futImageView.layer.masksToBounds = true
        futImageView.contentMode = .scaleAspectFill
        futImageView.backgroundColor = .blue
        
        futTitle.text = fut.title
    }
}

