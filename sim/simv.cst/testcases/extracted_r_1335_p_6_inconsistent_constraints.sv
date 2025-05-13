class c_1335_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1335_6;
    c_1335_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx00111z0xzxx010xx0xx0xz0z1xx011xxxxxzxxxzzxzzzzxxzxzzzxxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
