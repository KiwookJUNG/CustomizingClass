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
        // 지정 초기화 메소드
        // 필수 구현 메소드 - 이 메소드를 지정하지 않으면 스토리보드에서 객체를 사용할 수 없기 때문에
        
        super.init(coder: aDecoder)! // 상위 클래스의 동일한 초기화 메소드에서 처리하는 내용을 누락시키지 않기위해
        // 부모의 초기화 메소드를 내부저긍로 호출함.
        
        // 스토리보드 방식으로 버튼을 정의했을 때 적용되는 코드들
        self.backgroundColor = UIColor.green // 녹색배경
        self.layer.borderWidth = 2 // 테두리는 조금 두껍게
        self.layer.borderColor = UIColor.black.cgColor // 테두리는 검은색으로
        self.setTitle("버튼", for: .normal) // 기본 문구 설정
    }
    
    // CGRect 타입의 인자값을 입력받는 초기화 메소드를 정의한다.
    // 프로그래밍 방식으로 버튼 객체를 생성할 때 사용할 메소드
    override init(frame: CGRect) {
        // 지정 초기화 메소드
        
        super.init(frame: frame) // 1단계 초기화
        
        // 밑에 부분 2단계 초기화
        // 밑에 부분에 사용된 모든 프로퍼티는 부모 클래스에서 상속받은 것들
        // 따라서 1단계와 2단계가 순서가 바뀐다면 초기화된 값이 덮어 쓰일 위험이 있다.
        // 이러한 오류를 방지하기 위해 1단계 초기화 이후에 2단계 초기화를 해줘야함
        
        self.backgroundColor = UIColor.gray // 배경 회색
        self.layer.borderColor = UIColor.black.cgColor // 테두리 검은색
        self.layer.borderWidth = 2 // 테두리 조금 두껍게
        self.setTitle("코드로 생성된 버튼", for: .normal) // 기본 문구 설정
    }
    
    init() {
        // 지정 초기화 메소드
        
        super.init(frame: CGRect.zero)
        
        // UIButton에 정의되어 있지 않은 새로운 지정 초기화 메소드
        // 지정 초기화 메소드는 반드시 부모의 지정 초기화 메소드를 호출해 주어야하는데
        // 대부분의 경우에는 자신과 동일한 형식의 부모 초기화 메소드를 호출하기 마련이다.
        
        // 하지만 init()의 경우 CSButton 클래스에서 새롭게 정의된 형식이기 때문에 부모클래스에서는
        // 이와 동일한 형식의 초기화 메소드를 찾을 수 없다.
        // 이때에는 부모 클래스에서 정의된 지정 초기화 메소드 중 하나를 임의로 선택하여 호출해 주면된다.
        // --> super.init(frame: CGRect.zero)
        
        // CGRect.zero 는 CGRect(x: 0, y: 0, width: 0, height: 0)
    }
}
