class c_186_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_186_6;
    c_186_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zzx1x101xz01zz1xz1x1zz011x0x10zzzzzxzzxzxzzxxxxzxzzxzzxxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
