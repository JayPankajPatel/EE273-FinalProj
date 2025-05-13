class c_662_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_662_6;
    c_662_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x10x000x0101001101zz0z100xz0zxzxxzxxzxzxzzzxxzzxxxxxzzxzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
