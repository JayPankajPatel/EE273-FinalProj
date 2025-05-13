class c_55_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_55_6;
    c_55_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z0x1x0xzxz1z111zzx0zxz1xx1zxx0zzzxxxzzzxzxzzzxxzzzzzxxxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
