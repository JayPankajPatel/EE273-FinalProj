class c_510_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_510_6;
    c_510_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz0xxx001xx0101z111x0xx1zxz0xz0zzxzxzxzxzxzzxzzxzzxxzxzzzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
