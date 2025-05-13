class c_1340_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1340_6;
    c_1340_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010x1xx0xx1zxx00zx11zx1x0001z1x1zxxxzzxxxxxxzzzxxxxxxxzxzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
