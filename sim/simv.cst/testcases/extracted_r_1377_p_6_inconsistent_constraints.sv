class c_1377_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1377_6;
    c_1377_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0zx1zx1x1zzz000xxxz0zxz101zx1zzxxzzxxxxzzzzzzxxzxxxzzxxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
