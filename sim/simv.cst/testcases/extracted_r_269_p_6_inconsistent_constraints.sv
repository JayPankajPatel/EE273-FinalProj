class c_269_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_269_6;
    c_269_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x11x01111011xz1x0xx100x010zxx1xzxxxzzxzxzzxzzxzzzxzzxxzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
