class c_1108_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1108_6;
    c_1108_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11010100xx1xz1zx1z1z1z1x10xz1z0xxzxxzxxxxzzzzxxxxzzzzzzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
