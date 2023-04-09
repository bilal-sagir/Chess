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
    
    
    func decideAction(gameData: [Piece]) -> [Piece] {
        let selectedItemCount = gameData.filter({ $0.isSelected == true }).count
        guard let firstItem = gameData.first(where: { $0.isSelected == true }) else { return []}
        
        if selectedItemCount == 1 {
            return detectAvailableMoves(piece: firstItem, gameData: gameData)
        } else {
            let secondItem = gameData.filter({ $0.isSelected == true })[1]
            
            let firstPosition = firstItem.position
            let secondPosition = secondItem.position
            
            firstItem.position = secondPosition
            secondItem.position = firstPosition
            
            resetSelected(gameData: gameData)
            
            return gameData
        }
    }
    
    private func resetSelected(gameData: [Piece]) {
        for piece in gameData {
            piece.isSelected = false
            if piece.type == .available {
                piece.type = .empty
            }
        }
    }
    
    func detectAvailableMoves(piece: Piece, gameData: [Piece]) -> [Piece] {
        
        switch piece.type {
        case .pawn:
            return pawnRule(piece: piece, gameData: gameData) // TODO:  Refactor: if u pass piece to method, dont need this switch here!e
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
    
    private func changePieceType(to: PieceType, piece: Piece, gameData: GameData) {
        gameData.filter({$0 == piece})
    }
    
    private func changePieceType(piecePositions: [Position], gameData: GameData, typeToChange type: PieceType) {
        gameData.filter { item in
            piecePositions.contains { $0 == item.position }
        }.forEach { item in
            item.type = type
        }
    }
    
    private func pawnRule(piece: Piece, gameData: [Piece]) -> GameData {
        let position = piece.position
        
        switch piece.color {
        case .white:
            let availableMoves = isWhiteTop ? [Position(x: position.x , y: position.y + 1),
                                               Position(x: position.x , y: position.y + 2)] : [Position(x: position.x , y: position.y - 1),
                                                                                               Position(x: position.x , y: position.y - 2)]
            
            changePieceType(piecePositions: availableMoves, gameData: gameData, typeToChange: .available)
            
            return gameData
        case .black:
            let availableMoves = isWhiteTop ? [Position(x: position.x , y: position.y - 1), Position(x: position.x , y: position.y - 2)] :  [Position(x: position.x , y: position.y + 1), Position(x: position.x , y: position.y + 2)]
            
            changePieceType(piecePositions: availableMoves, gameData: gameData, typeToChange: .available)


            return gameData
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
