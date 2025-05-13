class c_775_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_775_6;
    c_775_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1x1z0zx110zx1x00zxx11zx1x0z011xxxxzzxzzxxxzxxxzzzxzzzzxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
