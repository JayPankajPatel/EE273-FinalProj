class c_474_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_474_6;
    c_474_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz10xxzx1xzx10zzx110z0zx10zx10z1xxzzxzxzxzzxzxxzzxzzzzzzzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
