class c_276_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_276_6;
    c_276_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010zzxzxz1zxx00x0zx1zzx0z11zxzzxxxzxzxxzxzzxxxzzxxzzzzxzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
