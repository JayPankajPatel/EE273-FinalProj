class c_201_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_201_6;
    c_201_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1z01zx1z101xxxz1z0zxz1zzz00zxzxxxzzzzxxxzzxxxxxzzzxxxxxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
