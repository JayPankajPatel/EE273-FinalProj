class c_14_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_14_6;
    c_14_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10101z1z0xz0011xz0z0zxz11z1zxxxzzzzxzzxxzxxxxxxzxxzzzzxxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
