//
//  InitialGameData.swift
//  ChessGame
//
//  Created by Bilal on 16.03.2023.
//

import Foundation

public var initialGameData: [Piece] = [
    Piece(type: .rook, color: .white, position: (0, 0)),
    Piece(type: .knight, color: .white, position: (1, 0)),
    Piece(type: .bishop, color: .white, position: (2, 0)),
    Piece(type: .king, color: .white, position: (3, 0)),
    Piece(type: .queen, color: .white, position: (4, 0)),
    Piece(type: .bishop, color: .white, position: (5, 0)),
    Piece(type: .knight, color: .white, position: (6, 0)),
    Piece(type: .rook, color: .white, position: (7, 0)),
    
    Piece(type: .pawn, color: .white, position: (0, 1)),
    Piece(type: .pawn, color: .white, position: (1, 1)),
    Piece(type: .pawn, color: .white, position: (2, 1)),
    Piece(type: .pawn, color: .white, position: (3, 1)),
    Piece(type: .pawn, color: .white, position: (4, 1)),
    Piece(type: .pawn, color: .white, position: (5, 1)),
    Piece(type: .pawn, color: .white, position: (6, 1)),
    Piece(type: .pawn, color: .white, position: (7, 1)),
    
    //MARK: - empty start
    Piece(type: .empty, color: .empty, position: (0, 2)),
    Piece(type: .empty, color: .empty, position: (1, 2)),
    Piece(type: .empty, color: .empty, position: (2, 2)),
    Piece(type: .empty, color: .empty, position: (3, 2)),
    Piece(type: .empty, color: .empty, position: (4, 2)),
    Piece(type: .empty, color: .empty, position: (5, 2)),
    Piece(type: .empty, color: .empty, position: (6, 2)),
    Piece(type: .empty, color: .empty, position: (7, 2)),
    
    Piece(type: .empty, color: .empty, position: (0, 3)),
    Piece(type: .empty, color: .empty, position: (1, 3)),
    Piece(type: .empty, color: .empty, position: (2, 3)),
    Piece(type: .empty, color: .empty, position: (3, 3)),
    Piece(type: .empty, color: .empty, position: (4, 3)),
    Piece(type: .empty, color: .empty, position: (5, 3)),
    Piece(type: .empty, color: .empty, position: (6, 3)),
    Piece(type: .empty, color: .empty, position: (7, 3)),
    
    Piece(type: .empty, color: .empty, position: (0, 4)),
    Piece(type: .empty, color: .empty, position: (1, 4)),
    Piece(type: .empty, color: .empty, position: (2, 4)),
    Piece(type: .empty, color: .empty, position: (3, 4)),
    Piece(type: .empty, color: .empty, position: (4, 4)),
    Piece(type: .empty, color: .empty, position: (5, 4)),
    Piece(type: .empty, color: .empty, position: (6, 4)),
    Piece(type: .empty, color: .empty, position: (7, 4)),
    
    Piece(type: .empty, color: .empty, position: (0, 5)),
    Piece(type: .empty, color: .empty, position: (1, 5)),
    Piece(type: .empty, color: .empty, position: (2, 5)),
    Piece(type: .empty, color: .empty, position: (3, 5)),
    Piece(type: .empty, color: .empty, position: (4, 5)),
    Piece(type: .empty, color: .empty, position: (5, 5)),
    Piece(type: .empty, color: .empty, position: (6, 5)),
    Piece(type: .empty, color: .empty, position: (7, 5)),

    //MARK: - empty end
    Piece(type: .pawn, color: .black, position: (0, 6)),
    Piece(type: .pawn, color: .black, position: (1, 6)),
    Piece(type: .pawn, color: .black, position: (2, 6)),
    Piece(type: .pawn, color: .black, position: (3, 6)),
    Piece(type: .pawn, color: .black, position: (4, 6)),
    Piece(type: .pawn, color: .black, position: (5, 6)),
    Piece(type: .pawn, color: .black, position: (6, 6)),
    Piece(type: .pawn, color: .black, position: (7, 6)),
    
    Piece(type: .rook, color: .black, position: (0, 7)),
    Piece(type: .knight, color: .black, position: (1, 7)),
    Piece(type: .bishop, color: .black, position: (2, 7)),
    Piece(type: .king, color: .black, position: (3, 7)),
    Piece(type: .queen, color: .black, position: (4, 7)),
    Piece(type: .bishop, color: .black, position: (5, 7)),
    Piece(type: .knight, color: .black, position: (6, 7)),
    Piece(type: .rook, color: .black, position: (7, 7)),
]
