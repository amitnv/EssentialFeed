//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Amit Vaidya on 20/12/2023.
//

import XCTest

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "http://example.com")
    }
}

class HTTPClient {
    static let shared = HTTPClient()
    private init() {}
    
    var requestedURL: URL?
}
final class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient.shared
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()
        
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
    }

}
