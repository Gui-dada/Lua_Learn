function func(num,string)
    -- print("this is text function.")
    print("num    :",num)
    print("string :",string)
    return 1,2,3,4,5
end
tab = {
    func = function(num, string)
        print("num    :", num)
        print("string :", string)
        return 1, 2, 3, 4, 5
    end
}
