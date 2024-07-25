//
//  UserStoryResponse.swift
//  Instagram_Youtube
//
//  Created by Sopheamen VAN on 27/6/24.
//

import Foundation

struct UserStoryResponse: Hashable, Identifiable {
    var id: Int
    var imageUrl: String
    var caption: String
}
