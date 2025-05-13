class c_491_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_491_6;
    c_491_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1xzxz1x0z101x0011z1z101z100zxzxxxxzzzxxzxxxxzxzxzxzzxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
