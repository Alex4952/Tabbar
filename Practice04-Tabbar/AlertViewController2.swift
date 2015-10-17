//
//  AlertViewController2.swift
//  Practice04-Tabbar
//
//  Created by Mac on 2015. 10. 17..
//  Copyright © 2015년 Mac. All rights reserved.
//

import UIKit

class AlertViewController2 : UIViewController {
	
	
	@IBAction func alert(sender: AnyObject) {
		
		// 설정을 8.0으로 바꿔서 사용해야 함.
		let alertView = UIAlertView(
			title: "메세지입니다",
			message: "경고합니다",
			delegate: nil,
			cancelButtonTitle: "취소",
			otherButtonTitles: "확인", "보류", "경고")
		
		alertView.show()

	}
	
}
