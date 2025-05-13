class c_1393_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1393_6;
    c_1393_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11xxxx1zz1100z1x1xz011zzxxx0001xxzxxzzzzzxxzxxzxzxzxxxzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
