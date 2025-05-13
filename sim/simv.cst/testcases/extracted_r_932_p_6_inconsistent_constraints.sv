class c_932_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_932_6;
    c_932_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10101010x0zz0x1111xz1x0xxz0x1z0xzxxzzzzzzxzxzzzzxzxxzxzzxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
