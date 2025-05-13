class c_1507_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1507_6;
    c_1507_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxxzzz00x00x1xxxx00x1zx1z0z1zx0zzxzxxzxzxxzzzxxzxxxxzzzzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
