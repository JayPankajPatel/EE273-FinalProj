class c_425_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_425_6;
    c_425_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1zzzz1x1z1xx10z0z0zxzzx1z01zxxxzzzzzxzxzxzxzzxxxxxzzxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
