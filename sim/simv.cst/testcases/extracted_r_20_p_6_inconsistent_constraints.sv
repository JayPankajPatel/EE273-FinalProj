class c_20_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_20_6;
    c_20_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx11101z1zzz10zx0xzxx1z0xzx0xz1zxxxzxxzzzxxzxzzxxzzzzxxxzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
