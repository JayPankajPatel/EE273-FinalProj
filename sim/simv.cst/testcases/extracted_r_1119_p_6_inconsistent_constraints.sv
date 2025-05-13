class c_1119_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1119_6;
    c_1119_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z001zzzxxzx1xzxz10zzz1x010zx0011xxzzzzzxzxxzzxzxxxzxxzzxxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
