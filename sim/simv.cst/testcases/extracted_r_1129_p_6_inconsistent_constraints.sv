class c_1129_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1129_6;
    c_1129_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xz1101xz00xz0zx1zxx1000xz01x11zzxzzxxxzzxzxzxzzzxzzzxxxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
