class c_865_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_865_6;
    c_865_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1zx0z0z0zxxzzx0zxzx1zz1x1zxx1xzxzxzxxxxzxzzzxzxxxzzxxxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
