class c_385_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_385_6;
    c_385_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zx1010x001000xzxxxx1z1z100z0zxzzzzzzzxxzxzzxzxzxzxzzzxxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
