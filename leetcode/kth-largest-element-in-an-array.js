var findKthLargest = function(nums, k) {
  nums.sort(function(a, b){return b-a})
  return(nums[k-1]) 
};