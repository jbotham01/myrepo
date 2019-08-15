

### Use to calculate power/ minimum control size
## https://community.optimizely.com/t5/Strategy-Culture/Calculating-sample-size-for-an-experiment/td-p/2466


# Baseline approx.
#450000/ 20000000

function getSampleSize() {
  let effect = 0.05; // Minimum Detectable Effect
  let significance = 0.95; // Statistical Significance
  let conversion = 0.05; // Baseline Conversion Rate
  
  let c = conversion - (conversion * effect);
  let p = Math.abs(conversion * effect);
  let o = conversion * (1 - conversion) + c * (1 - c);
  let n = 2 * significance * o * Math.log(1 + Math.sqrt(o) / p) / (p * p);
  
  return Math.round(n);
}


getSampleSize <- function(effect, significance, conversion) {
  
  c <- conversion - (conversion * effect);
  p <- abs(conversion * effect);
  o <- conversion * (1 - conversion) + c * (1 - c);
  n <- 2 * significance * o * log(1 + sqrt(o) / p) / (p * p)
  
  return(n)
}

getSampleSize(0.1, 0.95, 0.1)
