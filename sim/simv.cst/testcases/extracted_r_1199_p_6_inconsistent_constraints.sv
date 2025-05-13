class c_1199_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1199_6;
    c_1199_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z01x00z0xz01xx1z1x0z00011x0x10zzzzzxzzzxxxzxzxzxzzxzzzxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
