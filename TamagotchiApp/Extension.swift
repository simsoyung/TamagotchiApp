//
//  Extension.swift
//  TamagotchiApp
//
//  Created by 심소영 on 6/7/24.
//

import UIKit

extension UILabel {
    func settingLabel(text: String){
        self.text = text
        self.layer.cornerRadius = 20
        self.textAlignment = .center
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 1
        self.font = .systemFont(ofSize: 12, weight: .medium)
        self.backgroundColor = .clear
    }
}

extension UIImageView {
    func settingImageView(image: String){
        self.image = UIImage(named: image)
        self.layer.cornerRadius = 30
        self.clipsToBounds = true
        self.contentMode = .scaleAspectFill
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
    }
}
