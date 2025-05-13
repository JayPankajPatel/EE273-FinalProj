class c_326_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_326_6;
    c_326_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxxz01xz00xz101011xxz10x010zx11xzzxzxxzzzzzzzzzxxzxxzxxxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
