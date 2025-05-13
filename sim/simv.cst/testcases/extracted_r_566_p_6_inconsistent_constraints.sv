class c_566_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_566_6;
    c_566_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zz0x1110xxxzxx0x010xx00x1zxzz1zzzzzzzxzzzxxzxxxzzzzzzxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
