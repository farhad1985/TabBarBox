## TabBarBox
the TabBarBox is like tabBar's dropbox

<img src="https://raw.githubusercontent.com/farhad1985/TabBarBox/master/Screenshot/screenshot.png" />


you can use in cocoapods
```swift
pod 'TabBarBox'
```



# How to use

first, you must import TabBarBox and your class inherit of TabBarBoxController

```swift
import TabBarBox
```

```swift
class CustomTabBarViewController: TabBarBoxController {
    ...
    
```

then you selected TabBar and change class to 'CustomTabBarViewController'

<img src="https://raw.githubusercontent.com/farhad1985/TabBarBox/master/Screenshot/include.png" />


<img src="https://raw.githubusercontent.com/farhad1985/TabBarBox/master/Screenshot/tabbar.png" />



action for homeButton

```swift
import UIKit
import TabBarBox

class CustomTabBarViewController: TabBarBoxController {

    override func viewDidLoad() {
        super.viewDidLoad()

        homeButton.addTarget(self, action: #selector(didTapAction(_:)), for: .touchUpInside)
    }
    
    func didTapAction(_ sender: Any) {
        // do someThing
    }
}
    
```

