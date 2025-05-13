class c_667_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_667_6;
    c_667_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0010zxzx0z1zz11xxz0x11010z1xzxzzxzzxxzzzxxxxxzxxxzzzzzzzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
