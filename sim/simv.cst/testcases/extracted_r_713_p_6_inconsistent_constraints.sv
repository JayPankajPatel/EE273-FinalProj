class c_713_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_713_6;
    c_713_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x10xzx0z01x0101000z1z111zzzzx1zzxxxxzzzzxzxzxxxxzxzxzzzxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
