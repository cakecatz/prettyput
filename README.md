# Usage
Put `var p = require('prettyput')` into your source code.  
### For String,Object,Array... 
    p.p(obj);
    p.pp([str,obj,arr]);
Output is just like console.log.  

### For Object  
    var obj =
    {
      a:'A',
      b:'B',
      c:{
        d:'D',
        e:{
          f:'F'
        }
      }
    }
    p.o(obj);

output

    {
      a:A
      b:B
      c:{
        d:D
        e:{
          f:F
        }
      }
    }

### For Array  
    var arr = [6,4,3,9,5];
    p.a(arr);

output

    [0] -> 6
    [1] -> 4
    [2] -> 3
    [3] -> 9
    [4] -> 5


### For Error
    p.e(err);

Check err value and output it when err contain some value.
