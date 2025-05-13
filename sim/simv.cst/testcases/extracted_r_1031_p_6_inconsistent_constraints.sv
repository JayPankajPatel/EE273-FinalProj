class c_1031_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1031_6;
    c_1031_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x0000xz1x0zz0xxxxz01x1110xxxz1xxzzzzxxxzxzzzxzzxzxzzzxzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
