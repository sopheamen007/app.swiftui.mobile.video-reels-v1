//
//  PostResponse.swift
//  Instagram_Youtube
//
//  Created by Sopheamen VAN on 27/6/24.
//

import Foundation

struct PostResponse: Hashable, Identifiable {
    let id: Int
    let user: UserInstagramResponse
    let caption: String?
    let postType: Int  //Assuming 1 for image and 2 for video
    let imageOrVideoUrl: [String]
    let totalLikes: Int
    let totalComments: Int
    
}
