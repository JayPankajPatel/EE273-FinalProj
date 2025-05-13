class c_118_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_118_6;
    c_118_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11x0zx111x010xzx0zzzzzx1x0z1110zxzxzxzxzxxzzxzzxxzxxxzzxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
