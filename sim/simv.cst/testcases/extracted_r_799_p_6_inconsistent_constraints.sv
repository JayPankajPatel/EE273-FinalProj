class c_799_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_799_6;
    c_799_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0111z0xzzzxzz10x0z1101xx0z1z0z1xzxxzxxxzxxzxzzzzxxxzzzzzxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
