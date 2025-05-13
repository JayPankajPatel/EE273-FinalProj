class c_1882_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1882_6;
    c_1882_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x0z1x1z1z1x1x0xz100z0xzz0xzzzxxxxzzzzxxxzxxzxzzxxzxzzzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
