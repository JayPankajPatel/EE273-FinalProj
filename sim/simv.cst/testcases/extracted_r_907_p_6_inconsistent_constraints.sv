class c_907_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_907_6;
    c_907_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0xxxz1x00zx0xz101z0110zxz0zx0xxxxxxzxxzzxzxxzxxxzzxzzxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
