class c_541_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_541_6;
    c_541_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xzz101100001z1110z0010z1x0111xxzzzzxxzxxxzzxxzxzxzzzzzzzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
