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
			cancelButtonTitle: "취소", // 취소 index는 0으로 고정된 값이고, 화면에서는 가장 하단에 보임
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
	

	/*
	UIAlertController
	
	let alertController = UIAlertController(title: "Oops!", message: "This feature isn't available right now", preferredStyle: .Alert)
	let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in }
	alertController.addAction(OKAction)
	self.presentViewController(alertController, animated: true) { }
	*/
	@IBAction func alert2(sender: AnyObject) {
		let alert = UIAlertController(title: "제목", message: "메세지", preferredStyle: UIAlertControllerStyle.Alert)
		
		let cancel = UIAlertAction(title: "취소", style: UIAlertActionStyle.Cancel, handler: {
		(_) in
			NSLog("취소버튼을클릭함")
		})
		
		let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {(_) in NSLog("OK 버튼 클릭")})
		let ok2 = UIAlertAction(title: "OK2", style: UIAlertActionStyle.Destructive, handler: {(_) in NSLog("OK2 강조 버튼 클릭")})
		
		alert.addAction(cancel)
		alert.addAction(ok)
		alert.addAction(ok2)
		
		alert.addTextFieldWithConfigurationHandler(nil)
		
		self.presentViewController(alert, animated: false, completion: nil)
	}
	
	
	
}
