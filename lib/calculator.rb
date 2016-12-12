def _get_dom(nums)
  nums.sort!
  # only true if num and den have different signs
  if (0 < nums[0]) ^ (0 < nums[-1])
    # if they have diferent signs we only use negative quotients
    (nums[0]..0).to_a.reverse
  else
    # for same signs all positive quotients
    (0..nums[-1].abs).to_a
  end
end

def _get_a_candidate(dom)
  return dom[0] if dom.size === 1
  dom[(dom.size / 2.0).floor]
end

def div(num, den)
  raise ZeroDivisionError if den === 0
  dom = _get_dom [num, den]
  while true
    x   = _get_a_candidate dom
    rem = num - den * x
    if rem.abs < den.abs && (!((0 < rem) ^ (0 < den)) || rem === 0)
      # found the result, end loop, display values
      return "#{ x } r #{ rem }"
    elsif (0 < rem) ^ (0 < num)
      # return the left hand of the dom
      dom = dom[0...dom.index(x)] 
    else
      # return the right hand of the dom
      dom = dom[dom.index(x)..-1]
    end
  end
end
