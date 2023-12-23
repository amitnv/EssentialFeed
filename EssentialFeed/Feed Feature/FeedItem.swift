//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Amit Vaidya on 20/12/2023.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
