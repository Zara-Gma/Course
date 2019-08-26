function factorial(num) {
    // define a result variable 
      var result = 1;
    // calculate factorial and store value in result
      for (var i = 1; i <= num; i++) {
        result *=  i;
      }
    // return the result variable 
      return result;
    }
