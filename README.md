# Summary
Presententing a modal viewcontroller when the UIRefreshControl is running, the UIRefreshControl stops rotating and will be frozen.
Issue occurs since iOS 9.

#Steps to Reproduce
1. Open attached example project
2. Do a pull to refresh in order to trigger the UIRefreshControl
3. Tap a row of the UITableView to open a modal viewcontroller
4. Close modal viewcontroller
5. UIRefreshControl does not rotate anymore

#Expected Results
UIRefreshControl should still be active after dismissing the modal viewcontroller

#Actual Results
UIRefreshControl does not rotate after dismissing the modal viewcontroller. But is still visible (frozen!)
See [example](https://raw.githubusercontent.com/tapwork/frozenrefreshcontrol/master/example.png)

#Version
iOS 9.0.1

#Configuration
iPhone 5s iOS 9.0.1
