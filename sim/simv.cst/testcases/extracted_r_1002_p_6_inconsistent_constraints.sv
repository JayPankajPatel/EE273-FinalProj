class c_1002_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1002_6;
    c_1002_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x111x01zz0x0zx010xz11zz11z111xxxxxzzxxzzzxzxxxzzxxxzxxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
