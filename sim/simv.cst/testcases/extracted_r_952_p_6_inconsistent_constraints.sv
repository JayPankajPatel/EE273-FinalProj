class c_952_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_952_6;
    c_952_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01101z1xxxxxxx01xx010z0zz0x000zzxxxzzxxzxxzxxzxxxxxxxzzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
