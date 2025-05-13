class c_453_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_453_6;
    c_453_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11xz0z0zzxz001x1z1z11xz1z101z1zzxxzzzxxzzzxxzxxzzzxxxxzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
