class c_598_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_598_6;
    c_598_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx001xx11010xx0x1110xzx0x0xx10x1xzzxzxxxzxxzxzxxzxxxzzzxxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
