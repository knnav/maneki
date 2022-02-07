# Maneki
A command line digital assistant born form a night of insomnia!
### What does it do?
Currently, Maneki can:
- Search a term using Duckduckgo's instant answers without habing to go on the browser (Maneki will open a browser window with the search in case it doesn't find it on instant answers)
- Fetch the latest stories from hackernews
- Tell the time (because why not!)

There are many more features coming to Maneki, and they will be announced as they roll.

### How does it work?
To run maneki, go into its folder and run `ruby main.rb` (OOf course, you need to have Ruby installed). Once initialized, Maneki will greet you and ask for input.

### Macros
Maneki accepts a growing set of macros that invoke its different services:
```
!time -> Tells yout the current time.
!s (or !search)  <term> -> Makes a Duckduckgo search with <term>.
!hackernews -> Shows the latest hackernews stories
```


#### TO DO:
- Add tests for everything (and rspec for that matter!)
- More dumb features! more dumb features!