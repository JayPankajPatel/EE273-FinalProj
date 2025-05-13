class c_259_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_259_6;
    c_259_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z0010zzx0zx0zx10zx10x0101xxxxxxzzxxxzzzzxxxxxxzxxxzzzxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
