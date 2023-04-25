//
//  SearchUiKitCell.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 25.04.2023.
//

import UIKit
import SnapKit

class SearchUiKitCell: UICollectionViewCell {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.textColor = UIColor.white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        contentView.addSubview(titleLabel)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalTo(imageView.snp.centerX)
            make.bottom.equalTo(imageView.snp.bottom).offset(-5)
        }
        
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    
    func configure(data: SearchViewModelCategory, indexPath: IndexPath) {
        titleLabel.text = data.subtitleText
        imageView.image = UIImage(named: data.image)
    }
}
