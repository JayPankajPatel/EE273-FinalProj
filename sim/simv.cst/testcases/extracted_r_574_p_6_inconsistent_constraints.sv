class c_574_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_574_6;
    c_574_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0xxxx010xz0010x0zxzzzx1x0111x0xxzzxzxxzxzzzzxzzzxzzxzzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
