//
//  CollectionViewCell.swift
//  ChessGame
//
//  Created by Bilal on 15.03.2023.
//

import UIKit

class GameCollectionViewCell: UICollectionViewCell {
    public static let identifier = "CollectionViewCell"
    
    lazy var imageView: UIImageView = {
        let temp = UIImageView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.clipsToBounds = true
        temp.contentMode = .scaleAspectFit
        return temp
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(imageView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
        ])
    }
    
    func configure(imageName: String) {
        imageView.image = UIImage(named: imageName)
    }
    
    func setSelectedBG() {
        backgroundColor = .red
    }
}
