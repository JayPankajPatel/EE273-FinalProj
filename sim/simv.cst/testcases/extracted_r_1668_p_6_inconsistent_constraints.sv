class c_1668_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1668_6;
    c_1668_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010z0x11zz1xz0z1zz10xxzxxx0zxxzxxxzzxxzxzzzxxzxzzxzxxzxxzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
