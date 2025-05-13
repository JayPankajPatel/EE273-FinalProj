class c_1284_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1284_6;
    c_1284_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x00010z01x0zx100zz0z0zx1xxz0zzzzzxxxzxxxzxzxzxzxzzzzzxxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
