//
//  NewTableViewCell.swift
//  TamagotchiApp
//
//  Created by 심소영 on 6/7/24.
//

import UIKit
import SnapKit

class NewTableViewCell: UITableViewCell {
    
    static let identifier = "NewTableViewCell"
    
    var firstLabel = UILabel()
    var secondLabel = UILabel()
    var thirdLabel = UILabel()
    var firstImage = UIImageView()
    var secondImage = UIImageView()
    var thirdImage = UIImageView()
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureHierarchy()
        configureLayout()
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


func configureHierarchy(){
    contentView.addSubview(firstLabel)
    contentView.addSubview(secondLabel)
    contentView.addSubview(thirdLabel)
    contentView.addSubview(firstImage)
    contentView.addSubview(secondImage)
    contentView.addSubview(thirdImage)
}
func configureLayout(){
    firstImage.snp.makeConstraints { make in
        make.top.equalTo(contentView.safeAreaLayoutGuide).offset(20)
        make.leading.equalTo(contentView.safeAreaLayoutGuide).offset(30)
        make.size.equalTo(50)
    }
    firstLabel.snp.makeConstraints { make in
        make.leading.equalTo(contentView.safeAreaLayoutGuide).offset(30)
        make.height.equalTo(15)
        make.width.equalTo(50)
    }
    secondImage.snp.makeConstraints { make in
        make.top.equalTo(contentView.safeAreaLayoutGuide).offset(20)
        make.leading.equalTo(firstImage.snp.trailing).offset(30)
        make.size.equalTo(50)
    }
    secondLabel.snp.makeConstraints { make in
        make.leading.equalTo(firstLabel.snp.trailing).offset(30)
        make.height.equalTo(15)
        make.width.equalTo(50)
    }
    thirdImage.snp.makeConstraints { make in
        make.top.equalTo(contentView.safeAreaLayoutGuide).offset(20)
        make.leading.equalTo(secondImage.snp.trailing).offset(30)
        make.size.equalTo(50)
    }
    thirdLabel.snp.makeConstraints { make in
        make.leading.equalTo(secondLabel.snp.trailing).offset(30)
        make.height.equalTo(15)
        make.width.equalTo(50)
    }
    
}
func configureUI(){
    contentView.backgroundColor = .white
    firstLabel.settingLabel(text: "따끔따끔 다마고치")
    firstImage.settingImageView(image: "1-1")
    secondLabel.settingLabel(text: "따끔따끔 다마고치")
    secondImage.settingImageView(image: "1-1")
    thirdLabel.settingLabel(text: "따끔따끔 다마고치")
    thirdImage.settingImageView(image: "1-1")
}
    
}
