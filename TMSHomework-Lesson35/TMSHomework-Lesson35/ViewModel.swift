//
//  ViewModel.swift
//  TMSHomework-Lesson35
//
//  Created by Наталья Мазур on 17.04.24.
//

import Foundation
import RxSwift
import RxCocoa

class ViewModel {
    
    var counter = BehaviorSubject<Int>(value: 0)
    
    func addOne() {
        guard let counterValue = try? counter.value() else { return }
        counter.onNext(min(counterValue + 1, 50))
    }
    
    func subtractOne() {
        guard let counterValue = try? counter.value() else { return }
        counter.onNext(max(counterValue - 1, 0))
    }
}
