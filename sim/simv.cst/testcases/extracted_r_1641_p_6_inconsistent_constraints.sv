class c_1641_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1641_6;
    c_1641_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00110z10z000zz0x0zzxz01zx0z0z0x1xxzzxzzxxzxzzzxzzxzzxxxxxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
