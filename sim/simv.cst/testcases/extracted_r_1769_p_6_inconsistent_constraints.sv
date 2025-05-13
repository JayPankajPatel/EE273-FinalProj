class c_1769_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1769_6;
    c_1769_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111xz10zz1x01x00101x1x0z00xzxzxzzxzxzzxxxzzzxxzxzzzxxxxxxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
