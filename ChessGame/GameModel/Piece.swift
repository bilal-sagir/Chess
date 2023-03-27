//
//  PieceModel.swift
//  ChessGame
//
//  Created by Bilal on 16.03.2023.
//

import Foundation

public enum PieceType: String {
    case pawn = "Pawn"
    case rook = "Rook"
    case knight = "Knight"
    case bishop = "Bishop"
    case queen = "Queen"
    case king = "King"
    case empty
}

public enum PieceColor: String {
    case white = "White"
    case black = "Black"
    case empty = ""
}

public class Piece {
    let type: PieceType
    let color: PieceColor
    var position: (Int, Int)
    
    init(type: PieceType, color:PieceColor, position: (Int, Int)) {
        self.type = type
        self.color = color
        self.position = position
    }
    
    func imageName() -> String {
        return color.rawValue + type.rawValue
    }
}
