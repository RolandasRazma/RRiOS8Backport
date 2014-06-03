iOS8 Backport
=============

This is [iOS8](http://www.apple.com/ios/ios8/) API [backport](http://en.wikipedia.org/wiki/Backporting) to [iOS7](http://www.apple.com/ios/ios6/).

### Goal
* backport useful features from iOS8 to iOS7 to simplify transition for developers without using any private API.
* backport should behave 100% same way on iOS7 as on iOS8 from developers and users perspective. For example it is ok to add implementation of `-[CLLocationManager requestWhenInUseAuthorization]` that does nothing on iOS7.
* on iOS8 back ported API shouldn't have any effect on system - default iOS implementation should be used.

### Why?
Not all users will update to iOS8 and developer life is hard enaugh :)

### How
Add project as library, setup `Build Phases`, add `-ObjC` to `Other Linker Flags`


### iOS7 to iOS6 Backport
If you supporting `iOS6` check out [RRiOS7Backport](https://github.com/RolandasRazma/RRiOS7Backport)

### ContainerView
If you supporting `iOS5` check out [RRContainerView](https://github.com/RolandasRazma/RRContainerView) and [RRBaseInternationalization](https://github.com/RolandasRazma/RRBaseInternationalization)
