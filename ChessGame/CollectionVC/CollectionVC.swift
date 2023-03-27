//
//  CollectionVC.swift
//  ChessGame
//
//  Created by Bilal on 15.03.2023.
//

import UIKit

class CollectionVC: UIViewController {
    
    let viewModel = CollectionVM(gameManager: GameManager())

    private lazy var collectionView: UICollectionView = {
        let viewLayout = UICollectionViewFlowLayout()
        let temp = UICollectionView(frame: .zero, collectionViewLayout: viewLayout)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.backgroundColor = .clear
        temp.dragInteractionEnabled = true
        return temp
    }()
    
    private lazy var gridView: GridView = {
        let rect = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height) // TODO: şuna başka çare bul
        let temp = GridView(frame: rect)
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.addSubview(gridView)
        view.addSubview(collectionView)
        
        collectionView.dataSource = self
        collectionView.delegate = self
//        collectionView.dragDelegate = self
//        collectionView.dropDelegate = self
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: gridView.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            gridView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            gridView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            gridView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        ])
    }
}

extension CollectionVC: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as! CollectionViewCell
        let item = viewModel.itemForCell(atIndexPath: indexPath)
        cell.configure(imageName: item.imageName())
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        viewModel.didSelectItem(atIndexPath: indexPath) {
            collectionView.reloadData()
        }
    }
}

extension CollectionVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.frame.width / 8, height: view.frame.width / 8)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return .zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return .zero
    }
}

//extension CollectionVC: UICollectionViewDragDelegate {
//    func collectionView(_ collectionView: UICollectionView, itemsForBeginning session: UIDragSession, at indexPath: IndexPath) -> [UIDragItem] {
//        if let item = viewModel.findItem(withIndexPath: indexPath) {
//            let itemName = item.name.rawValue
//            let itemProvider = NSItemProvider(object: itemName as NSString)
//            let dragItem = UIDragItem(itemProvider: itemProvider)
//            dragItem.localObject = itemName
//            return [dragItem]
//        } else {
//            return []
//        }
//    }
//}

//extension CollectionVC: UICollectionViewDropDelegate {
//
//    func collectionView(_ collectionView: UICollectionView, dropSessionDidUpdate session: UIDropSession, withDestinationIndexPath destinationIndexPath: IndexPath?) -> UICollectionViewDropProposal {
//        if collectionView.hasActiveDrag {
//            return UICollectionViewDropProposal(operation: .move, intent: .insertAtDestinationIndexPath)
//        }
//        return UICollectionViewDropProposal(operation: .forbidden)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, performDropWith coordinator: UICollectionViewDropCoordinator) {
//
//        var destinationIndexPath: IndexPath
//
//        if let indexPath = coordinator.destinationIndexPath {
//            destinationIndexPath = indexPath
//            let item = viewModel.findItem(withIndexPath: destinationIndexPath)
//            item?.position.0 = destinationIndexPath.row
//            item?.position.1 = destinationIndexPath.section
//            collectionView.reloadData()
//            print(destinationIndexPath.row, indexPath.section)
//
//        } else {
//            let row = collectionView.numberOfItems(inSection: 0)
//            destinationIndexPath = IndexPath(row: row - 1, section: 0)
//        }
//
//        if coordinator.proposal.operation == .move {
//            self.reorderItem(coordinator: coordinator, destinationIndexPath: destinationIndexPath, collectionView: collectionView)
//        }
//    }
//
//    func reorderItem(coordinator:UICollectionViewDropCoordinator, destinationIndexPath: IndexPath, collectionView: UICollectionView) {
//        if let item = coordinator.items.first,
//           let sourceIndexPath = item.sourceIndexPath {
//
//            collectionView.performBatchUpdates({
//                viewModel.data.remove(at: sourceIndexPath.item)
//                viewModel.data.insert(item.dragItem.localObject as! Piece, at: destinationIndexPath.item)
//                collectionView.deleteItems(at: [sourceIndexPath])
//                collectionView.insertItems(at: [destinationIndexPath])
//            }, completion: nil)
//            coordinator.drop(item.dragItem, toItemAt: destinationIndexPath)
//        }
//    }
//}
