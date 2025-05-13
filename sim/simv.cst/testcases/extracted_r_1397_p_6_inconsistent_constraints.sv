class c_1397_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1397_6;
    c_1397_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxxzx1xxx0z010001z00001011z1zx0zzxzzzzxxzzzzxxzzzzzzxxxzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
