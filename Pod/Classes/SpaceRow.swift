//
//  SpaceRow.swift
//  Pods
//
//  Created by Henrique Morbin on 21/12/16.
//
//

import Foundation

fileprivate let defaultHeight = 8.0

open class SpaceRow: Row {
    
    public required init(height: Double = defaultHeight, bgColor: UIColor = .clear, selectionStyle: UITableViewCellSelectionStyle = .none) {
        super.init(identifier: nil, visible: true, object: nil)
        
        self.setHeight(withStaticHeight: height)
        
        self.setConfiguration { row, cell, indexPath in
            cell.backgroundColor = bgColor
            cell.selectionStyle = selectionStyle
        }
    }
    
    public required init(identifier: String?, visible: Bool, object: AnyObject?) {
        super.init(identifier: identifier, visible: visible, object: object)
    }
    
}

extension UITableView {
    @discardableResult
    public func addSpace(height: Double = defaultHeight, bgColor: UIColor = .clear) -> Row {
        return addRow(SpaceRow(height: height, bgColor: bgColor))
    }
}

extension Section {
    @discardableResult
    public func addSpace(height: Double = defaultHeight, bgColor: UIColor = .clear) -> Row {
        return addRow(SpaceRow(height: height, bgColor: bgColor))
    }
}
