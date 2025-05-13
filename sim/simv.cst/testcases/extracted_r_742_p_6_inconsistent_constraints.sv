class c_742_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_742_6;
    c_742_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x01xz1xzxx0zz1zx1zzz1xzz0xzxz0zzzxxxxxxxzxzzxxxxzzzxzxxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
