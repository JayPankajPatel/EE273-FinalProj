class c_1317_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1317_6;
    c_1317_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x110zzzz1xzzz1x1z0xzzz1z1zxzx0x1zzxxzxxxzxzxxxxzxzxxxxzzxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
