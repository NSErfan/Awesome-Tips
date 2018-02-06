//
//  Dynamic.swift
//  MVVM
//
//  Created by Farhad on 2/6/18.
//  Copyright © 2018 Farhad. All rights reserved.
//

import Foundation

class Dynamic<T> {

    typealias Listener = (T) -> ()
    var listener: Listener?
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(listener: @escaping Listener) {
        self.listener = listener
    }
}
