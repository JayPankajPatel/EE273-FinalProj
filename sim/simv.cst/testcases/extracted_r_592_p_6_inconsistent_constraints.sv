class c_592_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_592_6;
    c_592_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz1x1z0010010xxzx10x10xz101zx11zxxzzzxxxzzxzxxxzzzxxzzzzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
