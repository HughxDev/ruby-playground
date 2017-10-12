# [“Why’s (Poignant) Guide to Ruby”](https://poignant.guide)

From [Wikipedia][1]:

>why's (poignant) Guide to Ruby, sometimes called w(p)GtR or just "the poignant guide", is an introductory book to the Ruby programming language, written by why the lucky stiff. The book is distributed under the Creative Commons Attribution-ShareAlike license.
>
>The book is unusual among programming books in that it includes quite a lot of strange humor and narrative side tracks which are sometimes completely unrelated to the topic. Many motifs have become inside jokes in the Ruby community, such as references to the words "chunky bacon". The book includes many characters which have become popular as well, particularly the cartoon foxes and Trady Blix, a large black feline friend of why's, who acts as a guide to the foxes (and occasionally teaches them some Ruby).
>
>The book is published in HTML and PDF. Chapter three was reprinted in The Best Software Writing I: Selected and Introduced by Joel Spolsky (Apress, 2005).

## Errata

Changes to Ruby over time have left some portions of the text out of date. They will be logged here, along with alternatives, if any.

### Chapter 4

- 

### Expansion Pak 1

- `ri -Tf html String#gsub > gsub.html`: outputting HTML has been removed as of [RDoc 4.0](https://github.com/ruby/rdoc/blob/master/History.rdoc#400--2013-02-24): “ri -f html is no longer supported.” Alternative example: `ri -Tf markdown String#gsub > gsub.md`.
- `ri Date#time`: Method doesn’t exist (``NoMethodError: undefined method `time' for Date:Class``). Have found `to_time` and `ctime`.

    [1]: https://en.wikipedia.org/wiki/Why%27s_(poignant)_Guide_to_Ruby