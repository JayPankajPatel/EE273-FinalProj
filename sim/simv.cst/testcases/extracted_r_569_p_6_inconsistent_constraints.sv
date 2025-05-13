class c_569_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_569_6;
    c_569_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx111x110z0zxx1z0zzz1x1z00zzz1xzxxxzzxxzxzzzzxzxzxxzxxxxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
