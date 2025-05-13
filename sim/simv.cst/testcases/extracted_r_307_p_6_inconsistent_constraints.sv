class c_307_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_307_6;
    c_307_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x0xx0x1z1zzzxxxxx11xx0zxzzx0xzxzzzzxxzxzzzzxzxzzxzxzzzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
