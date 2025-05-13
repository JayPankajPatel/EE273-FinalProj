class c_636_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_636_6;
    c_636_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zz1xz0xz0xzxz100x10zx1z1zx1x11xxxxxxxxzzzxxxxzxzzzxzzxzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
