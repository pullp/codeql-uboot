import cpp

from Macro m
where m.getName().regexpMatch("ntoh(s|l|ll)")
select m, "ntoh function found"

// where m.getName().matches("ntoh_%")
// where m.getName() = "ntohs" or m.getName() = "ntohl" or m.getName() = "ntohll"
