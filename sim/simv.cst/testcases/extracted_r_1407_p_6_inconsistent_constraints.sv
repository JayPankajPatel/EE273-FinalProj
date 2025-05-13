class c_1407_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1407_6;
    c_1407_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz10z11z011z111zx1xz10zxzz00xz1xxxxxzxxxxxxzxxxzzzxzxzzzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
