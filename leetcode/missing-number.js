var missingNumber = function(nums) {
  for (let index = 0; index <= nums.length; index++) {
     if (!(nums.includes(index))) {
       return index
     }
   }
     return 0
 };