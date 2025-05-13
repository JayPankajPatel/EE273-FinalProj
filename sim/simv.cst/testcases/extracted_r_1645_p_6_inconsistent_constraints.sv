class c_1645_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1645_6;
    c_1645_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x00zzxz10z1xxx0zzz0z10z0zz1z110xxxzxzzzxxzzxzzxxxxzzzzzzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
