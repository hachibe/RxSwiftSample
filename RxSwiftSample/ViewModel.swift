//
//  ViewModel.swift
//  RxSwiftSample
//
//  Created by 坪内 征悟 on 2019/04/28.
//  Copyright © 2019 Masanori. All rights reserved.
//

import Foundation
import RxSwift

final class ViewModel {
    
    let inputKeyword: Observable<String>

    init(inputKeyword: Observable<String>) {
        self.inputKeyword = inputKeyword.map {
            $0.isEmpty ? "入力された文字が表示されます" : $0
        }
    }
}
