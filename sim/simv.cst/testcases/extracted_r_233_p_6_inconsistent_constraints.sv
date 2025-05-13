class c_233_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_233_6;
    c_233_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0001111011x001011xz11zx0zzx0010xxxzzzzxxzzxzxxxxzzzzxzxzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
