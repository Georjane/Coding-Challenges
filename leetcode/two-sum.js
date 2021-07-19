var twoSum = function(nums, target) {
  let results = []
  let ii, jj;
  for (let i = 0; i < nums.length; i++) {
    for (let j = 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target && i != j) {
        ii = i;
        jj = j;
        break
      }
    }    
  }
  results.push(ii, jj)
  return results
};