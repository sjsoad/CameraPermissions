//
//  CameraServicePermissions.swift
//  SKUtilsSwift
//
//  Created by Sergey Kostyan on 01.10.16.
//  Copyright © 2016 Sergey Kostyan. All rights reserved.
//

import UIKit
import AVFoundation
import SKServicePermissions

open class CameraPermissions: NSObject, ServicePermissions {
    
    public typealias PermissionsState = AVAuthorizationStatus
    
    public func requestPermissions(handler: @escaping (PermissionsState) -> Void) {
        AVCaptureDevice.requestAccess(for: .video) { [weak self] _ in
            guard let strongSelf = self else { return }
            handler(strongSelf.permissionsState())
        }
    }
    
    public func permissionsState() -> PermissionsState {
        return AVCaptureDevice.authorizationStatus(for: .video)
    }
    
}
