class c_745_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_745_6;
    c_745_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx00xxz010zzzz1zx0xx1z0z1z11zz1zzxxxxzzzxzxzxzxxzzzxzzxxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
