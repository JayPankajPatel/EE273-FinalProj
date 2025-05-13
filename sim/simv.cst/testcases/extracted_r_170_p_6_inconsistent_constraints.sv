class c_170_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_170_6;
    c_170_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx001zxx00zxxz1110110x1xx0zzx101xxzzzzxxxxzxxzzzzzxzxzzxxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
