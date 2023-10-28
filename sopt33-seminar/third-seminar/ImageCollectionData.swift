//
//  ImageCollectionData.swift
//  sopt33-seminar
//
//  Created by 방민지 on 10/28/23.
//

import Foundation

struct ImageCollectionData {
    let image: String
    var isLiked: Bool
    
    init(image: String, isLiked: Bool) {
        self.image = image
        self.isLiked = isLiked
    }
}

var imageCollectionList: [ImageCollectionData] = [.init(image: "image9", isLiked: true),
                                                  .init(image: "image10", isLiked: true),
                                                  .init(image: "image11", isLiked: false),
                                                  .init(image: "image12", isLiked: false),
                                                  .init(image: "image13", isLiked: true),
                                                  .init(image: "image14", isLiked: false),
                                                  .init(image: "image15", isLiked: true),
                                                  .init(image: "image16", isLiked: false),
                                                  .init(image: "image17", isLiked: false),
                                                  .init(image: "image18", isLiked: false),
                                                  .init(image: "image19", isLiked: true),
                                                  .init(image: "image9", isLiked: true),
                                                  .init(image: "image10", isLiked: true),
                                                  .init(image: "image11", isLiked: false),
                                                  .init(image: "image12", isLiked: false),
                                                  .init(image: "image13", isLiked: true),
                                                  .init(image: "image14", isLiked: false),
                                                  .init(image: "image15", isLiked: true),
                                                  .init(image: "image16", isLiked: false),
                                                  .init(image: "image17", isLiked: false),
                                                  .init(image: "image18", isLiked: false),
                                                  .init(image: "image19", isLiked: true)]
