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
    var position: Position
    var isSelected = false
    
    init(type: PieceType, color:PieceColor, position: Position) {
        self.type = type
        self.color = color
        self.position = position
    }
    
    func imageName() -> String {
        return color.rawValue + type.rawValue
    }
}

extension Piece: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(type)
        hasher.combine(color)
        hasher.combine(position)
    }
    
    public static func == (lhs: Piece, rhs: Piece) -> Bool {
        return lhs.type == rhs.type &&
            lhs.color == rhs.color &&
            lhs.position == rhs.position
    }
}

public class Position {
    let x: Int
    let y: Int
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

extension Position: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.x)
        hasher.combine(self.y)
    }
    
    public static func == (lhs: Position, rhs: Position) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

