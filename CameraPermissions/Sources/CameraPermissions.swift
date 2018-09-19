//
//  CameraServicePermissions.swift
//  SKUtilsSwift
//
//  Created by Sergey Kostyan on 01.10.16.
//  Copyright © 2016 Sergey Kostyan. All rights reserved.
//

import UIKit
import AVFoundation

public protocol CameraPermissions {
    
    typealias PermissionsState = AVAuthorizationStatus
    
    func requestPermissions(handler: @escaping (PermissionsState) -> Void)
    func permissionsState() -> PermissionsState
}

open class DefaultCameraPermissions: CameraPermissions {
    
    public init() {}
    
    public func requestPermissions(handler: @escaping (PermissionsState) -> Void) {
        AVCaptureDevice.requestAccess(for: .video) { _ in
            DispatchQueue.main.async { [weak self] in
                guard let `self` = self else { return }
                handler(self.permissionsState())
            }
        }
    }
    
    public func permissionsState() -> PermissionsState {
        return AVCaptureDevice.authorizationStatus(for: .video)
    }
    
}
