class c_1255_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1255_6;
    c_1255_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0010zx01x01x111xz10xx00zx0z0001zxzxzxxxzxzxzzzzxxxzzzxzzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
