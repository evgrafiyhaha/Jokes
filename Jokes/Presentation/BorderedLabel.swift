import UIKit

class BorderedLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBorders()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupBorders()
    }

    private func setupBorders() {
        // Установка рамки сверху
        let topBorder = CALayer()
        topBorder.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: 2)
        topBorder.backgroundColor = UIColor.black.cgColor // Замените на ваш цвет YP Black

        // Установка рамки снизу
        let bottomBorder = CALayer()
        bottomBorder.frame = CGRect(x: 0, y: frame.size.height - 2, width: frame.size.width, height: 2)
        bottomBorder.backgroundColor = UIColor.black.cgColor // Замените на ваш цвет YP Black

        // Добавление рамок в слой
        layer.addSublayer(topBorder)
        layer.addSublayer(bottomBorder)
    }

    // Переопределение метода для обновления рамок при изменении размера
    override func layoutSubviews() {
        super.layoutSubviews()
        // Обновляем рамки при изменении размера
        if let topBorder = layer.sublayers?.first {
            topBorder.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: 2)
        }
        if let bottomBorder = layer.sublayers?.last {
            bottomBorder.frame = CGRect(x: 0, y: frame.size.height - 2, width: frame.size.width, height: 2)
        }
    }
}
