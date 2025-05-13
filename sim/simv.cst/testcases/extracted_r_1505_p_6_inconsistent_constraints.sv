class c_1505_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1505_6;
    c_1505_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x101x0z011xz0zzxx10xz00x101x1zzxzzzxxzzzxxzxzxxxxxxzzxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
