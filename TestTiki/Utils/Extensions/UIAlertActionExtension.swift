//
//  UIAlertActionExtension.swift
//  TestTiki
//
//  Created by VuPham on 17/9/24.
//
import UIKit
import RxSwift

extension UIAlertController {

    struct AlertAction {
        var title: String?
        var style: UIAlertAction.Style
        var completionHandler: (() -> Void)?
        
        static func action(title: String?,
                           style: UIAlertAction.Style = .default) -> AlertAction {
            return AlertAction(title: title, style: style)
        }
    }

    static func present(
        in viewController: UIViewController,
        title: String?,
        message: String?,
        style: UIAlertController.Style = .alert,
        actions: [AlertAction]) -> Observable<Int> {
        return Observable.create { observer in
            let alertController = UIAlertController(title: title,
                                                    message: message,
                                                    preferredStyle: style)
            
            actions.enumerated().forEach { index, action in
                let action = UIAlertAction(title: action.title, style: action.style) { _ in
                    observer.onNext(index)
                    observer.onCompleted()
                }
                alertController.addAction(action)
            }
            
            viewController.present(alertController, animated: true, completion: nil)
            return Disposables.create { alertController.dismiss(animated: true, completion: nil) }
        }
    }
}
