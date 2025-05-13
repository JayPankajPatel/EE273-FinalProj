class c_1329_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1329_6;
    c_1329_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x100xx10z10z0z11x110x1zx00011x1zxxzzxzxzxzzzxzzzzxxzxzzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
