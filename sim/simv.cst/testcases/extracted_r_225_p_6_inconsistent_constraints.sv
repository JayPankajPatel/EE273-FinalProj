class c_225_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_225_6;
    c_225_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxz1xx0010z00xx11z0x00110zxxz01zxzzxxzzxzzzxxzxzxxxzzzzzxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
