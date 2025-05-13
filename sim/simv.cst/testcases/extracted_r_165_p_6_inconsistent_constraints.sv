class c_165_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_165_6;
    c_165_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x0z1z11001zx1z1xz0z1x11xzxx0zxzzxzxzzzzzxxzxzxxxxxxxxzzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
