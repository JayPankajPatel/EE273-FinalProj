class c_1419_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1419_6;
    c_1419_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z00110x1x1zx001z0zxzxz00zzz1zzxzzxzxzzzzzxxzxxzzxzxxxxzzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
