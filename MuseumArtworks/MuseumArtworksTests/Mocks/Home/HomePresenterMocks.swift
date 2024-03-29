//
//  HomePresenterMocks.swift
//  MuseumArtworksTests
//
//  Created by Fede Flores on 10/02/2024.
//

import Foundation
@testable import MuseumArtworks

class HomePresenterMocks: HomePresenterProtocols {
    
    var numberOfTimesFetchArtworksCalled = 0
    var numberOfTimesOnFetchPiecesOfArtSuccessCalled = 0
    var numberOfTimesOnFetchPiecesOfArtFailCalled = 0
    var numberOfTimesDidSelectRowCalled = 0
    var numberOfTimesUserDidScrollCalled = 0
    
    
    var isFetchingData: Bool = false
    var responseState: MuseumArtworks.HomePresenter.ResponseState = .onEmpty
    
    var artworkResponse: MuseumArtworks.ArtworkListResponse = JSONLoader().artworkListResponse() ?? ArtworkListResponse(results: [])
    
    func fetchArtworks() {
        numberOfTimesFetchArtworksCalled += 1
    }
    
    func onFetchPiecesOfArtSuccess(response: ArtworkListResponse) {
        numberOfTimesOnFetchPiecesOfArtSuccessCalled += 1
    }
    
    func onFetchPiecesOfArtFail(error: String) {
        numberOfTimesOnFetchPiecesOfArtFailCalled += 1
    }
    
    func numberOfItemsInSection() -> Int {
        1
    }
    
    func getArtworkViewModel(row: Int) -> ArtworkViewModel? {
        ArtworkViewModel(title: "", artists: "")
    }
    
    func didScrollToBottom(row: Int) -> Bool {
        true
    }
    
    func didSelectRow(row: Int) {
        numberOfTimesDidSelectRowCalled += 1
    }
    
    func userDidScroll() {
        numberOfTimesUserDidScrollCalled += 1
    }
    
    
}


