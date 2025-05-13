class c_317_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_317_6;
    c_317_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz1zz11x00zx1x0xzzzz1x11zzz0zz1xxxzzxxxxxxxzzxxzxxxzzzzxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
