class c_860_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_860_6;
    c_860_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x1zx1zx01zxz0x1xz1x0zzz0zzzzx1zzzzzzzzzxxxzzzzxxxxxxxxxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
