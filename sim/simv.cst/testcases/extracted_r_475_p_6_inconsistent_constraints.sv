class c_475_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_475_6;
    c_475_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1100xxzx0z100z0xz0zz0zz1100xxxxzxzzzzzxzzxzxxzxzxzzxzxxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
