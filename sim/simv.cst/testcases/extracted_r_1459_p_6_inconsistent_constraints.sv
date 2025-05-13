class c_1459_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1459_6;
    c_1459_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xzxzz1xxxxx00z1111z1xzxx11z1zzxzzxzzzxxzxxxzxxxzxzzzxxzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
