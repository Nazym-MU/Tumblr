import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var captionText: UITextView!
    
    var post: Post!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        captionText.text = post.caption.trimHTMLTags()
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: imageView)
        }
    }
}
