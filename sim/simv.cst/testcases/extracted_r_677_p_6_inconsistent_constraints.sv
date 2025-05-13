class c_677_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_677_6;
    c_677_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x11x1x1zzzzx001z10xzxx0zzz011x0xzzzxzzzzxxxxxzxzzzzxzxzxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
