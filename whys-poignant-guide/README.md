# “Why’s (Poignant) Guide to Ruby”

## Errata

Changes to Ruby over time have left some portions of the text out of date. They will be logged here, along with alternatives, if any.

### Chapter 4

- 

### Expansion Pak 1

- `ri -Tf html String#gsub > gsub.html`: outputting HTML has been removed as of [RDoc 4.0](https://github.com/ruby/rdoc/blob/master/History.rdoc#400--2013-02-24): “ri -f html is no longer supported.” Alternative example: `ri -Tf markdown String#gsub > gsub.md`.
- `ri Date#time`: Method doesn’t exist (``NoMethodError: undefined method `time' for Date:Class``). Have found `to_time` and `ctime`.