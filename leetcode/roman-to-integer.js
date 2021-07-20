var romanToInt = function(s) {
  let numeral ={'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000}
  let results = 0;
  let roman = s.split('')
  for (let i = 0; i < roman.length; i=i+2) {
    if (numeral[roman[i]] < numeral[roman[i+1]]  ) {
      results += numeral[roman[i+1]] - numeral[roman[i]]
    }else if(numeral[roman[i]] > numeral[roman[i+1]] ){
      if (numeral[roman[i+1]] < numeral[roman[i+2]]) {
        results += numeral[roman[i+2]] - numeral[roman[i+1]] + numeral[roman[i]]
        i += 1
      } else  {
        results += numeral[roman[i]] + numeral[roman[i+1]]
      }
    } else if(numeral[roman[i]] == numeral[roman[i+1]]) {
      results += numeral[roman[i]]+numeral[roman[i+1]]
    } else if (numeral[roman[i]] && i == roman.length - 1){
      results += numeral[roman[i]]
    }
  }
  return results;
};

romanToInt("III")
romanToInt("IV")
romanToInt("LVIII")
romanToInt("MCMXCIV")

