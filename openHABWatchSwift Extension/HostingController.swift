// Copyright (c) 2010-2019 Contributors to the openHAB project
//
// See the NOTICE file(s) distributed with this work for additional
// information.
//
// This program and the accompanying materials are made available under the
// terms of the Eclipse Public License 2.0 which is available at
// http://www.eclipse.org/legal/epl-2.0
//
// SPDX-License-Identifier: EPL-2.0

import Foundation
import Kingfisher
import OpenHABCoreWatch
import SwiftUI
import WatchKit

//class HostingController: WKHostingController<AnyView> {
//    @ObservedObject var settings = UserSettings.shared
//
//    override var body: AnyView {
//        AnyView(
//            ContentView(viewModel: UserData(urlString: settings.openHABRootUrl))
//                .environmentObject(settings)
//        )
//    }
class HostingController: WKHostingController<ContentView> {
    @ObservedObject var settings = UserSettings.shared
    override var body: ContentView {
        ContentView(urlString: settings.openHABRootUrl)
    }
}