#NFXRippleCellDemo
=================

UItableviewCell get ripple effect.

##Demo
![](http://i.imgur.com/LftgTD4.gif)

##Usage
Import and replace UItableViewcell
```objc
#import "NFXRippleCell.h"
```

```objc
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NFXRippleCell*cell = [[NFXRippleCell alloc] initWithStyle:0 reuseIdentifier:@"cell"];
    cell.textLabel.text = @"Touch and Ripple.";
    return cell;
}
```
