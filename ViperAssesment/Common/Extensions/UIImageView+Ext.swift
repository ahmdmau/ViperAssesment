//
//  UIImageView+Ext.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 02/07/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import Foundation
import Kingfisher

extension UIImageView {

    @IBInspectable var isRounded: Bool {
        set {
            if newValue {
                self.layer.cornerRadius = self.bounds.width / 2
            } else {
                self.layer.cornerRadius = 0
            }
        }
        get {
            return false
        }
    }

    func setImage(imageUrl: String, contentMode: UIView.ContentMode?, placeholderImageName: String?, completionHandler: ((Result<RetrieveImageResult, KingfisherError>) -> Void)? = nil) {
        let url = URL(string: imageUrl)

        let imageContentMode = contentMode == nil ? .scaleAspectFill : contentMode

        self.contentMode = imageContentMode!

        if let placeholder = placeholderImageName {
            self.kf.setImage(
                with: url,
                placeholder: UIImage(named: placeholder),
                options: [
                    .processor(DefaultImageProcessor.default),
                    .transition(.fade(1))
                ],
                completionHandler: completionHandler)
        } else {
            self.kf.setImage(
                with: url,
                options: [
                    .processor(DefaultImageProcessor.default),
                    .transition(.fade(1))
                ],
                completionHandler: completionHandler)
        }

    }

    func setImage(image: UIImage?, animation: UIView.AnimationOptions, duration: Double = 0.75) {
        UIView.transition(with: self,
                          duration: duration,
                          options: animation,
                          animations: { self.image = image },
                          completion: nil)
    }

    func setImageColorBy(uiColor: UIColor) {
        let templateImage = self.image?.withRenderingMode(.alwaysTemplate)

        self.image = templateImage
        self.tintColor = uiColor
    }

}
