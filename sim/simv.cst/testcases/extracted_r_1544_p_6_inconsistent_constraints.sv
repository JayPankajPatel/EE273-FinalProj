class c_1544_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1544_6;
    c_1544_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzxzzxz0z0xz0x0z0x1xzzzx1zz1zz0zzzzzzzzxxxxxxzxzxzzzzzxxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
