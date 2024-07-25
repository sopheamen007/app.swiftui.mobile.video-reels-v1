//
//  ReelsResponse.swift
//  Instagram_Youtube
//
//  Created by Sopheamen VAN on 27/6/24.
//

import Foundation

struct ReelsResponse: Hashable, Identifiable {
    let id: String
    let user: UserInstagramResponse
    let song: SearchAudioResponse
    let caption: String?
    let videoUrl: String
    let totalLikes: Int
    let totalComments: Int
    let totalShares: Int
    
}
