class c_452_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_452_6;
    c_452_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1z0zx1x1x0z100z110z0z0xz0xx101zxzxxzzzzzzzzzzzxxzxxzzxzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
