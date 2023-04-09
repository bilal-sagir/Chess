//
//  InitialGameData.swift
//  ChessGame
//
//  Created by Bilal on 16.03.2023.
//

import Foundation

public var initialGameData: [Piece] = [
    Piece(type: .rook, color: .white, position: Position(x: 0, y: 0)),
    Piece(type: .knight, color: .white, position: Position(x: 1, y: 0)),
    Piece(type: .bishop, color: .white, position: Position(x: 2, y: 0)),
    Piece(type: .king, color: .white, position: Position(x: 3, y: 0)),
    Piece(type: .queen, color: .white, position: Position(x: 4, y: 0)),
    Piece(type: .bishop, color: .white, position: Position(x: 5, y: 0)),
    Piece(type: .knight, color: .white, position: Position(x: 6, y: 0)),
    Piece(type: .rook, color: .white, position: Position(x: 7, y: 0)),
    
    Piece(type: .pawn, color: .white, position: Position(x: 0, y: 1)),
    Piece(type: .pawn, color: .white, position: Position(x: 1, y: 1)),
    Piece(type: .pawn, color: .white, position: Position(x: 2, y: 1)),
    Piece(type: .pawn, color: .white, position: Position(x: 3, y: 1)),
    Piece(type: .pawn, color: .white, position: Position(x: 4, y: 1)),
    Piece(type: .pawn, color: .white, position: Position(x: 5, y: 1)),
    Piece(type: .pawn, color: .white, position: Position(x: 6, y: 1)),
    Piece(type: .pawn, color: .white, position: Position(x: 7, y: 1)),
    
    //MARK: - empty start
    Piece(type: .empty, color: .empty, position: Position(x: 0, y: 2)),
    Piece(type: .empty, color: .empty, position: Position(x: 1, y: 2)),
    Piece(type: .empty, color: .empty, position: Position(x: 2, y: 2)),
    Piece(type: .empty, color: .empty, position: Position(x: 3, y: 2)),
    Piece(type: .empty, color: .empty, position: Position(x: 4, y: 2)),
    Piece(type: .empty, color: .empty, position: Position(x: 5, y: 2)),
    Piece(type: .empty, color: .empty, position: Position(x: 6, y: 2)),
    Piece(type: .empty, color: .empty, position: Position(x: 7, y: 2)),
    
    Piece(type: .empty, color: .empty, position: Position(x: 0, y: 3)),
    Piece(type: .empty, color: .empty, position: Position(x: 1, y: 3)),
    Piece(type: .empty, color: .empty, position: Position(x: 2, y: 3)),
    Piece(type: .empty, color: .empty, position: Position(x: 3, y: 3)),
    Piece(type: .empty, color: .empty, position: Position(x: 4, y: 3)),
    Piece(type: .empty, color: .empty, position: Position(x: 5, y: 3)),
    Piece(type: .empty, color: .empty, position: Position(x: 6, y: 3)),
    Piece(type: .empty, color: .empty, position: Position(x: 7, y: 3)),
    
    Piece(type: .empty, color: .empty, position: Position(x: 0, y: 4)),
    Piece(type: .empty, color: .empty, position: Position(x: 1, y: 4)),
    Piece(type: .empty, color: .empty, position: Position(x: 2, y: 4)),
    Piece(type: .empty, color: .empty, position: Position(x: 3, y: 4)),
    Piece(type: .empty, color: .empty, position: Position(x: 4, y: 4)),
    Piece(type: .empty, color: .empty, position: Position(x: 5, y: 4)),
    Piece(type: .empty, color: .empty, position: Position(x: 6, y: 4)),
    Piece(type: .empty, color: .empty, position: Position(x: 7, y: 4)),
    
    Piece(type: .empty, color: .empty, position: Position(x: 0, y: 5)),
    Piece(type: .empty, color: .empty, position: Position(x: 1, y: 5)),
    Piece(type: .empty, color: .empty, position: Position(x: 2, y: 5)),
    Piece(type: .empty, color: .empty, position: Position(x: 3, y: 5)),
    Piece(type: .empty, color: .empty, position: Position(x: 4, y: 5)),
    Piece(type: .empty, color: .empty, position: Position(x: 5, y: 5)),
    Piece(type: .empty, color: .empty, position: Position(x: 6, y: 5)),
    Piece(type: .empty, color: .empty, position: Position(x: 7, y: 5)),

    //MARK: - empty end
    Piece(type: .pawn, color: .black, position: Position(x: 0, y: 6)),
    Piece(type: .pawn, color: .black, position: Position(x: 1, y: 6)),
    Piece(type: .pawn, color: .black, position: Position(x: 2, y: 6)),
    Piece(type: .pawn, color: .black, position: Position(x: 3, y: 6)),
    Piece(type: .pawn, color: .black, position: Position(x: 4, y: 6)),
    Piece(type: .pawn, color: .black, position: Position(x: 5, y: 6)),
    Piece(type: .pawn, color: .black, position: Position(x: 6, y: 6)),
    Piece(type: .pawn, color: .black, position: Position(x: 7, y: 6)),
    
    Piece(type: .rook, color: .black, position: Position(x: 0, y: 7)),
    Piece(type: .knight, color: .black, position: Position(x: 1, y: 7)),
    Piece(type: .bishop, color: .black, position: Position(x: 2, y: 7)),
    Piece(type: .king, color: .black, position: Position(x: 3, y: 7)),
    Piece(type: .queen, color: .black, position: Position(x: 4, y: 7)),
    Piece(type: .bishop, color: .black, position: Position(x: 5, y: 7)),
    Piece(type: .knight, color: .black, position: Position(x: 6, y: 7)),
    Piece(type: .rook, color: .black, position: Position(x: 7, y: 7)),
]
