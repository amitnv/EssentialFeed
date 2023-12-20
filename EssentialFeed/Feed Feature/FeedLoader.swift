//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Amit Vaidya on 20/12/2023.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
