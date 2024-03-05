def get_content_approx(weights, values, w)
  price = 0
  counter = 0
  while w.to_i > 0

    (0..(weights.length)).each{ |i|
      if weights[i].to_i <= w.to_i
        counter = counter+1
      end
      if w.to_i-weights[counter].to_i==0
        return price
      elsif  w.to_i-weights[counter].to_i<=0
        return price
      end
      w = w-weights[counter]
      price += values[counter]
      counter = 0
    }
  end
  price
end