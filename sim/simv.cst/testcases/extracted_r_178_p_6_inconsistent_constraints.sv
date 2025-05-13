class c_178_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_178_6;
    c_178_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz0xzzz1z00xxzzz0111011100zxz01xxxzxzzzzxxzxxxzxzxzzzxzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
