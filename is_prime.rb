def isPrime?(n)
    return 'Prime' if n == 2
    return 'Not prime' if n == 1 || n.even?
    sq_n = Math.sqrt(n)
    a = (3..sq_n).step(2).to_a

    a.each do |i|
        if n % i == 0
            return 'Not prime'
        end
    end
    return 'Prime'
end

p = gets.strip.to_i
for a0 in (0..p-1)
    n = gets.strip.to_i
    puts isPrime?(n)
end
