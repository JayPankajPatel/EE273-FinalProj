class c_202_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_202_6;
    c_202_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0000zz1101z1011z1000z11z1zx00100zzzzxzzxzxxxzxzzzzxzxxxzzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
