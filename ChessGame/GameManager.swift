//
//  GameManager.swift
//  ChessGame
//
//  Created by Bilal on 27.03.2023.
//

import Foundation

protocol GameManagerDelegate {
    func gameDataUpdated()
}

class GameManager {
        
    static let shared = GameManager()
    
    var gameData = initialGameData
    
    private var firstPosition: (Int, Int)?
    private var lastPosition: (Int, Int)?
    
    func movePiece(indexPath: IndexPath, completion: ()->()) {
        if firstPosition == nil {
            firstPosition = indexPathToPosition(indexPath: indexPath)
        } else {
            lastPosition = indexPathToPosition(indexPath: indexPath)
            guard let firstPosition = firstPosition, let lastPosition = lastPosition else { return }
            piece(atPosition: lastPosition).position = firstPosition
            piece(atPosition: firstPosition).position = lastPosition
            self.firstPosition = nil
            self.lastPosition = nil
            completion()
        }
    }
    
    func itemForCell(atIndexPath indexPath: IndexPath) -> Piece {
        return gameData.first(where: { $0.position == (indexPath.row, indexPath.section) })! // TODO: remove force
    }
    
    private func piece(atPosition position: (Int, Int)) -> Piece {
        return gameData.first(where: { $0.position == position })! // TODO: remove force
    }
    
    private func changePosition(item: Piece, newPosition: (Int, Int)) {
        item.position = newPosition
    }
    
    private func indexPathToPosition(indexPath: IndexPath) -> (Int, Int) {
        return (indexPath.row, indexPath.section)
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
