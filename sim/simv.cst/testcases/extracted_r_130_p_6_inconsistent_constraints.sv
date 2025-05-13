class c_130_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_130_6;
    c_130_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xz1x1001z0010zx0xz0zxxz1xxz0zxxxzzzzxzxzxzxzxxzzzzzxzzxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
