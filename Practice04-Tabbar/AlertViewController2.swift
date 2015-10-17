//
//  AlertViewController2.swift
//  Practice04-Tabbar
//
//  Created by Mac on 2015. 10. 17..
//  Copyright © 2015년 Mac. All rights reserved.
//

import UIKit

class AlertViewController2 : UIViewController, UIAlertViewDelegate {
	
	
	@IBAction func alert(sender: AnyObject) {
		
		// 설정을 8.0으로 바꿔서 사용해야 함.
		let alertView = UIAlertView(
			title: "메세지입니다",
			message: "경고합니다",
			delegate: self,
			cancelButtonTitle: "취소",
			otherButtonTitles: "확인", "보류", "경고")
		
		alertView.show()

	}
	
	func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
		NSLog("buttonIndex=\(buttonIndex)")
		
		switch buttonIndex {
		case 0:
			NSLog("취소버튼");
		case 1:
			NSLog("확인버튼");
		case 2:
			NSLog("보류버튼");
		case 3:
			NSLog("경고버튼");
		default:
			NSLog("I don't know what is clicked")
		}
	}
	
}
