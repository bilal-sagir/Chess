//
//  GameManager.swift
//  ChessGame
//
//  Created by Bilal on 27.03.2023.
//

import Foundation




typealias GameData = [Piece]

class GameManager {
    
    private var isWhiteTop = true
    
    func itemForCell(atPosition position: Position, gameData: [Piece]) -> Piece {
        return gameData.first(where: { $0.position == position })! // TODO: remove force
    }
    
    
    func decideAction(gameData: GameData ) -> GameData {
        let selectedItemCount = gameData.filter({ $0.isSelected == true }).count
        guard let firstItem = gameData.first(where: { $0.isSelected == true }) else { return []}
       
        
        if selectedItemCount == 1 {
            let availableMoves = detectAvailableMoves(piece: firstItem, gameData: gameData)
            changePieceType(piecePositions: availableMoves, gameData: gameData, typeToChange: .available)
            return gameData
        } else {
            let secondItem = gameData.filter({ $0.isSelected == true })[1]
            
            let firstPosition = firstItem.position
            let secondPosition = secondItem.position
            
            let available = gameData.filter({ $0.type == .available})
            let availablePositions = available.map({$0.position})
            
            
            
            if availablePositions.contains(secondPosition) {
                firstItem.position = secondPosition
                secondItem.position = firstPosition
            }
            
            resetAllSelected(gameData: gameData)
            
            return gameData
        }
    }
    
    private func resetAllSelected(gameData: [Piece]) {
        for piece in gameData {
            piece.isSelected = false
            if piece.type == .available {
                piece.type = .empty
            }
        }
    }
    
    func detectAvailableMoves(piece: Piece, gameData: [Piece]) -> [Position] {
        
        switch piece.type {
        case .pawn:
            return pawnRule(piece: piece, gameData: gameData)
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
    
    private func changePieceType(piecePositions: [Position], gameData: GameData, typeToChange type: PieceType) {
        gameData.filter { item in
            piecePositions.contains { $0 == item.position }
        }.forEach { item in
            item.type = type
        }
    }
    
    private func pawnRule(piece: Piece, gameData: [Piece]) -> [Position] {
        let position = piece.position
        
        switch piece.color {
        case .white:
            let availableMoves = isWhiteTop ? [Position(x: position.x , y: position.y + 1),
                                               Position(x: position.x , y: position.y + 2)] : [Position(x: position.x , y: position.y - 1),
                                                                                               Position(x: position.x , y: position.y - 2)]
            
            return availableMoves
            
        
        case .black:
            let availableMoves = isWhiteTop ? [Position(x: position.x , y: position.y - 1), Position(x: position.x , y: position.y - 2)] :  [Position(x: position.x , y: position.y + 1), Position(x: position.x , y: position.y + 2)]
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
