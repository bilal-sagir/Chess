//
//  GameManager.swift
//  ChessGame
//
//  Created by Bilal on 27.03.2023.
//

import Foundation

typealias Position = (Int, Int)

class GameManager {
    
    var isWhiteTop = true
    
    func itemForCell(atPosition position: Position, gameData: [Piece]) -> Piece {
        return gameData.first(where: { $0.position == position })! // TODO: remove force
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
    
    func detectAvailableMoves(position: Position, gameData: [Piece]) -> [Position]? {
        let piece = gameData.first(where: { $0.position == position })! // TODO: remove force
        
        switch piece.type {
        case .pawn:
            return pawnRule(position: position, piece: piece) // TODO:  Refactor: if u pass piece to method, dont need this switch here!e
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
        case .available:
            emptyRule()
        }
        return []
    }
    
    
    private func pawnRule(position: Position, piece: Piece) -> [Position]? {
        switch piece.color {
        case .white:
            let availableMoves = isWhiteTop ? [(position.0 , position.1 + 1), (position.0 , position.1 + 2)] : [(position.0 , position.1 - 1), (position.0 , position.1 - 2)]
            return availableMoves
        case .black:
            let availableMoves = isWhiteTop ? [(position.0 , position.1 - 1), (position.0 , position.1 - 2)] :  [(position.0 , position.1 + 1), (position.0 , position.1 + 2)]
            return availableMoves
        case .empty:
            return []
        }
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
