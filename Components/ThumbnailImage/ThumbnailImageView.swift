//
//  ThumbnailImageView.swift
//  Instagram_Youtube
//
//  Created by Sopheamen VAN on 27/6/24.
//

import SwiftUI

struct ThumbnailImageView: View {
    let videoURL: URL
    let width, height: CGFloat?
    @State private var thumbnailImage: UIImage?
    
    var body: some View {
        Group {
            if let thumbnailImage = thumbnailImage {
                Image(uiImage: thumbnailImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: width, height: height)
                    .clipped()
                    
            } else {
                Rectangle()
                    .fill(Color.primaryColor)
                    .frame(width: width, height: height)
                    .onAppear {
                        generateThumbnail(from: videoURL) { image in
                            self.thumbnailImage = image
                        }
                    }
            }
        }
    }
}

#Preview {
    ThumbnailImageView(videoURL: URL(string: "https://player.vimeo.com/external/521787962.hd.mp4?s=c886caa69e529026d24607bfca3709cb8a14dde4&profile_id=174&oauth2_token_id=57447761")!,width: 140, height: 140)
}

