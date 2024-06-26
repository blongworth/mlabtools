#include <Rcpp.h>
using namespace Rcpp;

//' Fix status timestamp jitter
//'
//' Looks for timestamps same as previous timestamp.
//' Adds 1s to duplicate timestamp
//' If there is 1s gap after previous timestamp,
//' and gap is not in ADV timestamp, remove gap.
//'
//' @param timestamp A vector of status timestamps
//' @param adv_timestamp A vector of adv status timestamps
//' @return The corrected timestamp vector
// [[Rcpp::export]]
IntegerVector fix_timestamp_jitter(IntegerVector timestamp,
                                   IntegerVector adv_timestamp) {
  int n = timestamp.size();

  if (n == 0) return timestamp;  // Handle empty input

  for (int i = 1; i < n; i++) {
    if (timestamp[i] == NA_INTEGER || timestamp[i-1] == NA_INTEGER ||
        adv_timestamp[i] == NA_INTEGER || adv_timestamp[i-1] == NA_INTEGER) {
      continue; // Skip NA values
    }

    if (timestamp[i] == timestamp[i - 1]) {
      timestamp[i] = timestamp[i] + 1;
    }

    if (adv_timestamp[i] == adv_timestamp[i - 1] + 1 &&
        timestamp[i] == timestamp[i - 1] + 2) {
      timestamp[i] = timestamp[i] - 1;
    }
  }

  return timestamp;
}
