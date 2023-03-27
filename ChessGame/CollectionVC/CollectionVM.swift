//
//  CollectionVM.swift
//  ChessGame
//
//  Created by Bilal on 16.03.2023.
//

import Foundation

class CollectionVM {

    let gameManager: GameManager
    var gameData = initialGameData
    
    var firstPosition: Position?
    var secondPosition: Position?
    
    init(gameManager: GameManager) {
        self.gameManager = gameManager
    }
    
    func itemForCell(atIndexPath indexPath: IndexPath) -> Piece {
        return gameManager.itemForCell(atIndexPath: indexPath, gameData: gameData)
    }
    
    func didSelectItem(atIndexPath indexPath: IndexPath, completion: ()->() ) {
        if firstPosition == nil {
            firstPosition = convertIndexPathToPosition(indexPath)
        } else {
            secondPosition = convertIndexPathToPosition(indexPath)
            gameData = gameManager.swapItem(firstPosition: firstPosition!, lastPosition: secondPosition!, gameData: gameData)
            firstPosition = nil
            secondPosition = nil
            resetSelected()

            completion()
        }
    }
    
    private func convertIndexPathToPosition(_ indexPath: IndexPath) -> Position {
        return (indexPath.row, indexPath.section)
    }
    
    private func resetSelected() {
        for piece in gameData {
            piece.isSelected = false
        }
    }
}
