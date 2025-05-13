class c_1456_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1456_6;
    c_1456_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110z100000xzz10z10zx110xzx11z0x0zzzzxxxzzxzzzzzzxzxxzxxxzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
