class c_174_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_174_6;
    c_174_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz1011zx00xx0z100z1zzz1zx1z1xz0xxxzzzzzxxzxzzzxxxxzxzxxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
