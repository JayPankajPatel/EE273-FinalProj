class c_1774_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1774_6;
    c_1774_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0zzxx10zz1x0zzxz00x10x1zzzxz0xzzzzxzzzxzxzxzzxzzzzzzzxxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
