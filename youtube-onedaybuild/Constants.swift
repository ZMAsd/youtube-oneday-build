//
//  Constants.swift
//  youtube-onedaybuild
//
//  Created by admin on 2020/6/16.
//  Copyright © 2020 Min zhang. All rights reserved.
//

import Foundation

struct Constants {
    static var API_KEY = "AIzaSyAKro2W9t4XLLojusaxgPz-8qeGTY1zx98"
    static var PLAYLIST_ID = "PLu0fDnkFQxqEuFfJgd8kic_PgpLyzq6km"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    static var VIDEOCELL_ID = "VideoCell"
}
