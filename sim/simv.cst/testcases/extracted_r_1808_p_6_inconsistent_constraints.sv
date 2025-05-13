class c_1808_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1808_6;
    c_1808_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011z00zz1x1xz00zz010zz00x0zz0x1zzzzzzxzzxxxzzzxzxzzzzzzzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
