## Program Flow

1. Download from OWGR
  - This needs to be cleaned up
2. Convert to long format (each round as individual record)
  - This is the current issue--making this data manipulation
3. Calculate relative difficulty of each round--run a large regression over preceeding 2 (?) years, set 0 to average from PGA & Euro tour player.
  - Check how connected the tours are.  Do we need to run over 2.5 or 3 years to get enough connection?
  - Likely should be weighted towards current time to deprecate older results somewhat.
  - Do we do this every week?  Every Month?
  - This is not how previous Golf Ratings were generated.  That was over 4 years, and skipped the "difficulty of round" calculation--went straight to calculating the player ratings directly.
4. Use this average difficulty to generate round quality for each round for each player.
5. Using this round quality, develop player ratings based on appropriate weighting of current vs. past results.
  - Decoupling the individual round quality from the overall rating allows for much more granular investigation and potentially better models.