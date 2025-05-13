class c_923_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_923_6;
    c_923_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010zxxzz0zx1000zzz001x1z0z0x0x1zxxxxzzzxxxzzzzxzzzzzxxzzxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
