class c_32_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_32_6;
    c_32_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101x01x11zzzx0x00011z011x0z01010zxzzxzzxxzzzxzzzzzzzxxxxxzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
