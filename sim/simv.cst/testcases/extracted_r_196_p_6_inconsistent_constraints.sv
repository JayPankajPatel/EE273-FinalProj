class c_196_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_196_6;
    c_196_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x11x1x000xx1x10z0z11xx1011z1zxxxxxzzzzzzxxxxzzzxzxzzxxxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
