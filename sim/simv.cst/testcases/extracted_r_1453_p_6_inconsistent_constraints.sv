class c_1453_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1453_6;
    c_1453_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01zx1zx11x010z1zz01111zx0zzz0x0zxzzzxxxzxxzxxxzxxxxxxxzzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
