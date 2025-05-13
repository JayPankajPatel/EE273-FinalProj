class c_140_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_140_6;
    c_140_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1x00x0zx001x1xz0z0zzz0zxz11xzzzxzzxxzzxzxzzzzxzzzzzzzxzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
