class c_558_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_558_6;
    c_558_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0xx00x1xzx0x0xzx11x1z0zzzx0zxxxzzxxzxxxxxzxzzxxxxzzzzzxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
