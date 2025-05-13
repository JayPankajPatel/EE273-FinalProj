class c_1323_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1323_6;
    c_1323_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0010z0zzzzx0111x00xzz0x000x0z1x0xzzxxxzxxzzzzzzxzxzzzzzxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
