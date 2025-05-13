class c_373_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_373_6;
    c_373_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0110zx0z1xxx00x00001xz1x0x1z1z1xxzxzzxxxxzxxxxxzxxzxzxzzzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
