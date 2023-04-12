//
//  CollectionVM.swift
//  ChessGame
//
//  Created by Bilal on 16.03.2023.
//

import Foundation

class GameVM {

    let gameManager: GameManager
    var gameData = initialGameData

    init(gameManager: GameManager) {
        self.gameManager = gameManager
    }
    
    func itemForCell(atIndexPath indexPath: IndexPath) -> Piece {
        return gameManager.itemForCell(atPosition: indexPath.toPosition(), gameData: gameData)
    }
    
    func didSelectItem(atIndexPath indexPath: IndexPath, completion: ()->() ) {
        //gameData.first(where: { $0.position == indexPath.toPosition() })?.isSelected = true
        
        gameData = gameManager.decideAction(gameData: gameData)
        completion()
    }
}
