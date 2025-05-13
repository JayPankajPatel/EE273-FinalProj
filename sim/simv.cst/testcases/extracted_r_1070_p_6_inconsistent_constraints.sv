class c_1070_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1070_6;
    c_1070_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx01101x111zz10xzzx101z00xxx00xxzzzzxxxzxxzxzxzzzxzxzxzxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
