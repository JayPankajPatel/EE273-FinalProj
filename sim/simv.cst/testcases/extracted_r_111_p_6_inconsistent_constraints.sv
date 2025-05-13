class c_111_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_111_6;
    c_111_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz110xx1z0x1001xz0z100x0xz00xz1zxxzzzxxxzxzzzxzxxxxxzxzxxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
