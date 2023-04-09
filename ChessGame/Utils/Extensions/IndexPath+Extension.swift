//
//  IndexPath+Extension.swift
//  ChessGame
//
//  Created by Bilal on 9.04.2023.
//

import Foundation

extension IndexPath {
    func toPosition() -> Position {
        return Position(x: self.row, y: self.section)
    }
}
