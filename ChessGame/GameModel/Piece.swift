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
    case available
}

public enum PieceColor: String {
    case white = "White"
    case black = "Black"
    case empty = ""
}

public class Piece {
    var type: PieceType
    let color: PieceColor
    var position: (Int, Int)
    var isSelected = false
    
    init(type: PieceType, color:PieceColor, position: (Int, Int)) {
        self.type = type
        self.color = color
        self.position = position
    }
    
    func imageName() -> String {
        return color.rawValue + type.rawValue
    }
}
