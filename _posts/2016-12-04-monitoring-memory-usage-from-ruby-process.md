---
layout: post
title:  Monitoring memory usage of Ruby process
tags:   [tips, ruby, memory usage]
---

Just put this in your code. You may use logger instead of puts.

{% highlight ruby %}
Thread.new do
  while true
    pid = Process.pid
    rss = `ps -eo pid,rss | grep #{pid} | awk '{print $2}'`.to_i
    puts "MEMORY[#{pid}]: rss: #{rss}, live objects #{GC.stat[:heap_live_slots]}"
    sleep 5
  end
end
{% endhighlight %}
