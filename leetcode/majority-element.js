var majorityElement = function(nums) {
  obj = {};
  nums.forEach(num => {
    obj[num] = obj[num] === undefined ? 1 : obj[num] + 1
  });
  for (const [key, value] of Object.entries(obj)) {
    if (Math.max(...Object.values(obj)) === value) {
      return key
    }
  }
};