class c_1164_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1164_6;
    c_1164_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0zz1zzxx1xz100xx0xzxz0zzz0z000zzzxzxzxzxxxzzxzxzxxzxxzxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
