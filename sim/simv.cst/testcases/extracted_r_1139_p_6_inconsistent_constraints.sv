class c_1139_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1139_6;
    c_1139_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xxz0z00xx0z1zxxz101z0zx0z1x0zzzxxxxzxzzzzxxxzxxzxzzxzzzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
