//
//  GameManager.swift
//  ChessGame
//
//  Created by Bilal on 27.03.2023.
//

import Foundation

typealias Position = (Int, Int)

class GameManager {
    
    func itemForCell(atIndexPath indexPath: IndexPath, gameData: [Piece]) -> Piece {
        return gameData.first(where: { $0.position == (indexPath.row, indexPath.section) })! // TODO: remove force
    }
    
    func swapItem(firstPosition: Position, lastPosition: Position, gameData: [Piece]) -> [Piece] {
        var newGameData = [Piece]()
        
        for piece in gameData {
            if piece.position == firstPosition {
                piece.position = lastPosition
                piece.isSelected = true
            }
            if piece.position == lastPosition && !piece.isSelected {
                piece.position = firstPosition
            }
            newGameData.append(piece)
        }
        
        return newGameData
    }
    
    private func detectAvailableMoves(piece: Piece) {
        switch piece.type {
        case .pawn:
            pawnRule()
        case .rook:
            rookRule()
        case .knight:
            knightRule()
        case .bishop:
            bishopRule()
        case .queen:
            queenRule()
        case .king:
            kingRule()
        case .empty:
            emptyRule()
        }
    }
    
    
    private func pawnRule() {
        
    }
    
    private func rookRule() {
        
    }
    
    private func knightRule() {
        
    }
    
    private func bishopRule() {
        
    }
    
    private func queenRule() {
        
    }
    
    private func kingRule() {
        
    }
    
    private func emptyRule() {
        
    }
}
