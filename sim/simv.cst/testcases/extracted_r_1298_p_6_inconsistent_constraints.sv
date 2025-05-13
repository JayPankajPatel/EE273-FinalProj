class c_1298_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1298_6;
    c_1298_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxx1x0xxx1z110z1zzz1zx001zz1xx0zzzxxzxxxzzxzzzxzzzzxzxxxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
