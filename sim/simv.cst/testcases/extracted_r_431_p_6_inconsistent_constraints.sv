class c_431_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_431_6;
    c_431_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx11zz110z101xx110x001xxx0zx11zzxzzzxzzzzzxxzxxzzzxxxzzzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
