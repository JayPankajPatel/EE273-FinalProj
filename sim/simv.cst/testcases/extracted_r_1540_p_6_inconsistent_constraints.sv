class c_1540_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1540_6;
    c_1540_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x00xxxz1z0zx10x0xxz0z1x1zx000z0xxxzxxzzzzxzxzxzzzzzzzzzzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
