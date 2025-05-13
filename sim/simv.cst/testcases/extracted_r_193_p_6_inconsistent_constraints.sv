class c_193_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_193_6;
    c_193_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z11zx00xxzz1010x1110xz01111x10xxzxxxzzxzzzzxzzxzxzzzzxxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
