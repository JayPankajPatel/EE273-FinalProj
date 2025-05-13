class c_804_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_804_6;
    c_804_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxx001x001010z01x11xzzzxzxx1zz0xzzzxxxxzzxzzzxzzxzxzxxxzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
