class c_255_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_255_6;
    c_255_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx011x0xxx1zz0zxz11x00x0000z01z1xxxzzxxxxxzxxxzxzxxxxxxzxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
