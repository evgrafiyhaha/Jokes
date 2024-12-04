import UIKit

class CustomView: UIView {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderColor = UIColor(named: "YP Black")?.cgColor
        self.layer.borderWidth = 2
    }
}
