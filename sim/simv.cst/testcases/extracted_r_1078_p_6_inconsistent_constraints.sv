class c_1078_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1078_6;
    c_1078_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x0100xx101111x100xz010z0xz1z11zzzzzxxzzzxzxxxzzxzzzxxzzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
