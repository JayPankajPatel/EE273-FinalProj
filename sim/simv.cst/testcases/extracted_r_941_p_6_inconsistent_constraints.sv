class c_941_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_941_6;
    c_941_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxx0110xzzzzxx1zz1z1zx1xx01xz00xxzzzzxxzxzxzxxzzzxzxxxzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
