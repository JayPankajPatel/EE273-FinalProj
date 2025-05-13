class c_1297_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1297_6;
    c_1297_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101z100zz0101x10xzz0xz0zz110z1x0zzxzxzzzzxzxxxxxzxxxzzxzxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
