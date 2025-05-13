class c_272_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_272_6;
    c_272_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx00x11xxzz0z11z0z001xzx110xx11xzxxzzxxzzzxzxxzzzxzxxzxxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
