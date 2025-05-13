class c_1791_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1791_6;
    c_1791_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xz1z010z01xzz00x0zxzx1xxxz011zxxzzxzxxxxzxxzzzzzxxxxxzxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
