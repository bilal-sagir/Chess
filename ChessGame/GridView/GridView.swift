//
//  GridView.swift
//  ChessGame
//
//  Created by Bilal on 14.03.2023.
//

import Foundation
import UIKit

class GridView: UIView {  //TODO: bu guzelliği refactor et ...
    
    // MARK: Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .black
        
        let gridView = generateGrid()
        gridView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(gridView)
        
        NSLayoutConstraint.activate([
            gridView.leadingAnchor.constraint(equalTo: leadingAnchor),
            gridView.trailingAnchor.constraint(equalTo: trailingAnchor),
            gridView.topAnchor.constraint(equalTo: topAnchor),
            gridView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func generateGrid() -> UIStackView {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        
        for index in 0...7 {
            let singleLine = generateLine(withIndex: index)
            singleLine.translatesAutoresizingMaskIntoConstraints = false
            stackView.addArrangedSubview(singleLine)
        }
        return stackView
    }
    
    
    private func generateLine(withIndex lineIndex: Int) -> UIStackView {
        
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        
        for index in 0...7 {
            let singleSquare = UIView()
            singleSquare.translatesAutoresizingMaskIntoConstraints = false
            
            if index % 2 == 0 { //TODO: bu güzelliği refactor et. tek satır if iş görür gibi.
                if lineIndex % 2 == 0 {
                    singleSquare.backgroundColor = .chessBrown
                } else {
                    singleSquare.backgroundColor = .chessWhite
                }
            } else {
                if lineIndex % 2 == 0 {
                    singleSquare.backgroundColor = .chessWhite
                } else {
                    singleSquare.backgroundColor = .chessBrown
                }
            }
            
            NSLayoutConstraint.activate([
                singleSquare.widthAnchor.constraint(equalToConstant: frame.width/8),
                singleSquare.heightAnchor.constraint(equalToConstant: frame.width/8),
            ])
            stackView.addArrangedSubview(singleSquare)
        }
        return stackView
    }
}
