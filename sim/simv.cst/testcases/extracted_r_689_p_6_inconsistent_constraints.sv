class c_689_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_689_6;
    c_689_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz10z1101zz0xz100z0zzxzzx1z10zzxxxzzzzxzxzxzxxxxxzzzzxzxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
