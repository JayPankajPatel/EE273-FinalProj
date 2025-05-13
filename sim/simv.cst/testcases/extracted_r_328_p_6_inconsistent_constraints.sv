class c_328_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_328_6;
    c_328_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx01101x0zx1zzz01zz0x0zxz110xz0zzxzzzzzxzxxzzzxxxzxzxxxxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
