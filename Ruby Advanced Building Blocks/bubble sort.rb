def bubble_sort(buf)
    n = buf.length-1
    while n > 0
        swap = false
        for i in 0..n-1
            if(buf[i] > buf[i+1])
                temp = buf[i+1]
                buf[i+1] = buf[i]
                buf[i] = temp
                swap = true
            end
        end
        break if swap == false
        n-=1
    end
    puts buf.to_s
end


bubble_sort([4,3,78,2,0,2])

def bubble_sort_by(buf)
    n = buf.length-1
    while n > 0
        swap = false
        for i in 0..n-1
            if(yield(buf[i],buf[i+1]) > 0)
                temp = buf[i+1]
                buf[i+1] = buf[i]
                buf[i] = temp
                swap = true
            end
        end
        break if swap == false
        n-=1
    end
    puts buf.to_s
end

bubble_sort_by(["hi","hello","hey"]) {|left, right| left.length - right.length}
