class c_292_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_292_6;
    c_292_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x101zx101z0xxxzx01zzzzxx0xx1zzzzxzzzzxxzzxzxxzxxxxxzzxxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
