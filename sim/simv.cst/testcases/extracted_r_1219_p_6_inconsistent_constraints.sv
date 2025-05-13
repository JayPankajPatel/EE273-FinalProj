class c_1219_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1219_6;
    c_1219_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0101zz0x0xzzzzx10101zzzzx0xz0zxzxzzzxxzxxxzxzxxxzzzxxxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
