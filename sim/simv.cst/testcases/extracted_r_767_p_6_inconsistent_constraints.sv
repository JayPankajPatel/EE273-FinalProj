class c_767_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_767_6;
    c_767_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1zx0z0zxz0111x111zz0z10xz0xz1xzzzzxzxzxzzzxzzxxzzxxxzxzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
