class c_99_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_99_6;
    c_99_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxz111101x111xx1zx111x1x0zx0xz0zxxzxzxxzzzxxxxzzxzxxzxzxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
