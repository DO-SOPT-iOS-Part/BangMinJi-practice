//
//  CollectionViewCell.swift
//  sopt33-seminar
//
//  Created by 방민지 on 10/28/23.
//

import UIKit

protocol ItemSelectedProtocol: NSObject {
    func getButtonState(state: Bool, row: Int)
}

class CollectionViewCell: UICollectionViewCell {
    weak var delegate: ItemSelectedProtocol?
    
    static let identifier: String = "CollectionViewCell"
    
    private var itemRow: Int?
    override init(frame: CGRect) {
            super.init(frame: frame)
            self.setLayout()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        private func setLayout() {
            [imageView, likeButton].forEach {
                self.contentView.addSubview($0)
            }
            
            imageView.snp.makeConstraints {
                $0.edges.equalToSuperview()
            }
            likeButton.snp.makeConstraints {
                $0.bottom.trailing.equalToSuperview().inset(16)
            }
        }
        
        private let imageView = UIImageView()
        private lazy var likeButton = UIButton().then {
            $0.addTarget(self,
                                 action: #selector(likeButtonTap),
                                 for: .touchUpInside)
            $0.setImage(UIImage(systemName: "heart"), for: .normal)
            $0.setImage(UIImage(systemName: "heart.fill"), for: .selected)
        }
    
    func bindData(data: ImageCollectionData) {
            self.imageView.image = UIImage(named: data.image)
            self.likeButton.isSelected = data.isLiked
        }
    
    @objc private func likeButtonTap() {
            self.likeButton.isSelected.toggle()
            if let itemRow {
                self.delegate?.getButtonState(state: self.likeButton.isSelected,
                                              row: itemRow)
            }
        }
        
}
