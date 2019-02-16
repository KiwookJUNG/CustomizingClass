//
//  CSButton.swift
//  CustomizingClass
//
//  Created by 정기욱 on 16/02/2019.
//  Copyright © 2019 Kiwook. All rights reserved.
//

import UIKit

class CSButton: UIButton {
    
    // init(coder:) 는 스토리보드 방식으로 객체를 생성할 때 호출되는 초기화 메소드
    // 스토리보드에서도 객체를 초기화하기 위해 초기화 메소드를 호출한다. 하지만 객체들마다 초기화 메소드 형식이 제각각이라면
    // 스토리보드가 알아서 초기화 메소드를 호출하기 어렵다. 그래서 스토리 보드에서 사용하는 초기화 메소드는 규격화 돼있음.
    // 스토리 보드에서는 오직 이 형식의 초기화 메소드만 호출함.
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)! // 상위 클래스의 동일한 초기화 메소드에서 처리하는 내용을 누락시키지 않기위해
        // 부모의 초기화 메소드를 내부저긍로 호출함.
        
        // 스토리보드 방식으로 버튼을 정의했을 때 적용되는 코드들
        self.backgroundColor = UIColor.green // 녹색배경
        self.layer.borderWidth = 2 // 테두리는 조금 두껍게
        self.layer.borderColor = UIColor.black.cgColor // 테두리는 검은색으로
        self.setTitle("버튼", for: .normal) // 기본 문구 설정
    }
}
