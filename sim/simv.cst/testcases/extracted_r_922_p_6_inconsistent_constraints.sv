class c_922_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_922_6;
    c_922_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0z1xxz0z1xxz0x110z0xxz0zz001z0xzzxzxxxzxzzzzxxxzxzxzzxxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
