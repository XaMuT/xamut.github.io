---
title: "Monitoring Memory Usage From Ruby Process"
date: 2016-12-04T14:00:00+07:00
---

Just put this in your code. You may use logger instead of puts.

```ruby
Thread.new do
  while true
    pid = Process.pid
    rss = `ps -eo pid,rss | grep #{pid} | awk '{print $2}'`.to_i
    puts "MEMORY[#{pid}]: rss: #{rss}, live objects #{GC.stat[:heap_live_slots]}"
    sleep 5
  end
end
```
