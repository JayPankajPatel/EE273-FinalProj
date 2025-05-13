class c_1764_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1764_6;
    c_1764_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01xxz100z0100xz1z1x10zxz1010z0xzxzxxzxxzxzxxxxxzxxxzxxzxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
