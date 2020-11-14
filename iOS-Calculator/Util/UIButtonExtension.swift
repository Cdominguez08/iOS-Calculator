//
//  UIButtonExtension.swift
//  iOS-Calculator
//
//  Created by Cesar Dominguez on 06/10/20.
//

import UIKit

private let orange = UIColor(red: 254/255, green: 148/255, blue: 0/255, alpha: 1)

extension UIButton{
    
    //Borde redondo
    func round() {
        layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
    }
    
    // Brilla
        func shine() {
            UIView.animate(withDuration: 0.1, animations: {
                self.alpha = 0.5
            }) { (completion) in
                UIView.animate(withDuration: 0.1, animations: {
                    self.alpha = 1
                })
            }
        }
    
    //Cambia visualmente la apariencia del boton seleccionado
    func selectOperation(_ isSelected : Bool){
        
        backgroundColor = isSelected ? .white : orange
        setTitleColor(isSelected ? orange : .white, for: .normal)
    }
}
