//
//  TaskCell.swift
//  PhotoHunt
//
//  Created by Daniel Bartolini on 2/18/23.
//

import UIKit

class TaskCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var completedImageView: UIImageView!
    
    
    func configure(with task: Task) {
            titleLabel.text = task.title
            titleLabel.textColor = task.isComplete ? .secondaryLabel : .label
            completedImageView.image = UIImage(systemName: task.isComplete ? "checkmark" : "circle")?.withRenderingMode(.alwaysTemplate)
        completedImageView.tintColor = task.isComplete ? .blue : .gray
        
    }

}
