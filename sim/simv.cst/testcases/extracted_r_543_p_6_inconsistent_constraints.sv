class c_543_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_543_6;
    c_543_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00111zx010xxx110x10xzx0x0110x1xxzzxxxzxzxzxxzxxzzxzzxzzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
