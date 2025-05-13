class c_400_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_400_6;
    c_400_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz0z0x010xzzx11xxx001z001z10xx0zzxxzxxzzxxzxzxzzxxzzzzxzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
