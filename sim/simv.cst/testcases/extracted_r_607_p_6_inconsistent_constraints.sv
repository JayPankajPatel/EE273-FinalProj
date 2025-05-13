class c_607_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_607_6;
    c_607_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1xx0z0x10zx0x01001x1z110x011x0zzzxzzxxxzzxxxzxzzzzxzxxxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
