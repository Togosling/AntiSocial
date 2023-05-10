//
//  Bindable.swift
//  AntiSocial
//
//  Created by Тагай Абдылдаев on 2023/5/10.
//

import Foundation

class Bindable<T> {
    var value: T? {
        didSet {
            observer?(value)
        }
    }
    
    var observer: ((T?)->())?
    
    func bind(observer: @escaping (T?) ->()) {
        self.observer = observer
    }
    
}
