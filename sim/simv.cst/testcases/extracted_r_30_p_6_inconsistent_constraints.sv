class c_30_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_30_6;
    c_30_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zz1z0z10z0zzx11010zz1x0xz0x1zzzxxzzxxzzzzzzzzxxxxxzxzzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
