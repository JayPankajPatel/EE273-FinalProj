class c_968_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_968_6;
    c_968_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zz1x0001x010x1xxx11xx0z0z1xxx1xzxzzxxxzxxzzxxzxzzxxxxzzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
