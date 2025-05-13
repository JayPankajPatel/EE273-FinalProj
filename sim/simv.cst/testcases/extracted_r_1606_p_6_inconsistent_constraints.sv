class c_1606_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1606_6;
    c_1606_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx010z1z0111zzz1zxzxx10xx1xz00zxxxzxxzxzxzzxzxzzxxzzzzxzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
