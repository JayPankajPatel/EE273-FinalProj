class c_852_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_852_6;
    c_852_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0x1xzzzzx0xzz1zx10001xzxzx1xxxzxzzzxxzzzzxzxzxzxxzxxzzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
