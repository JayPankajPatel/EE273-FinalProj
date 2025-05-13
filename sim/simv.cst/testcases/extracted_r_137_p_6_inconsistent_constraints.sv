class c_137_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_137_6;
    c_137_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x110z1x1xxxzzx1zxzz0x11zx1x00z1zxxxzxzxzzxxxzxzzxzxzxxzxxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
