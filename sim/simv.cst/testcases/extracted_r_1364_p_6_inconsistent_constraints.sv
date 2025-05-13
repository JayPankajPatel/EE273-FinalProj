class c_1364_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1364_6;
    c_1364_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1x0z1010z1z0x011x01zzx0101zx0xzzzxxxzxxxxzxxzzzxxxzxxzxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
