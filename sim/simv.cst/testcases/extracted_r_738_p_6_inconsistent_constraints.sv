class c_738_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_738_6;
    c_738_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z101z0110x0xzxx1xz1z010z11zxx1zzxzxzzxzzzxzxzxzxxxzxzzzxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
