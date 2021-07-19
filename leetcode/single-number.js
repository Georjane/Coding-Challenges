var singleNumber = function(nums) {
  nums.sort(function(a, b){return a-b});
  for (let index = 0; index < nums.length; index = index + 2) {
    if (nums[index] !== nums[index+1]) {
      return nums[index]
    }    
  }
};