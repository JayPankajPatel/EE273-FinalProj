class c_364_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_364_6;
    c_364_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz00zxx1z0zx1xxzzz0x0xz0z0xx11xxzxxxzzxzzzxxzxxzxxxzxxxzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
