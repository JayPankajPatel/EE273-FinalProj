class c_1339_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1339_6;
    c_1339_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxzxz1x0zxz001xxz001z1xxz0x0xz0zzzxzxzxxzxzxzzzzxzxzzxxxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
