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
    
    var firstPosition: Position?
    var secondPosition: Position?
    
    init(gameManager: GameManager) {
        self.gameManager = gameManager
    }
    
    func itemForCell(atIndexPath indexPath: IndexPath) -> Piece {
        return gameManager.itemForCell(atPosition: convertIndexPathToPosition(indexPath), gameData: gameData)
    }
    
    func didSelectItem(atIndexPath indexPath: IndexPath, completion: ()->() ) {
        
        if let firstPosition = firstPosition {
            secondPosition = convertIndexPathToPosition(indexPath)
            gameData = gameManager.swapItem(firstPosition: firstPosition, lastPosition: secondPosition!, gameData: gameData)
            self.firstPosition = nil
            secondPosition = nil
            resetSelected()
        } else {
            firstPosition = convertIndexPathToPosition(indexPath)
            guard let availablePositions = gameManager.detectAvailableMoves(position: firstPosition!, gameData: gameData) else { return } // TODO: delete force
            for piece in gameData {
                for position in availablePositions {
                    if piece.position == position {
                        piece.type = .available
                    }
                }
            }
        }
        completion()
    }
    
    private func convertIndexPathToPosition(_ indexPath: IndexPath) -> Position {
        return (indexPath.row, indexPath.section)
    }
    
    private func resetSelected() {
        for piece in gameData {
            piece.isSelected = false
            if piece.type == .available {
                piece.type = .empty
            }
        }
    }
}
