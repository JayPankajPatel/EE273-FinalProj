class c_1374_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1374_6;
    c_1374_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0z0101zz100z1x00x0xzz0zzzzz000xzxzzxxxxzxzzzzzzzzxzzxzxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
