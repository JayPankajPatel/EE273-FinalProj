class c_451_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_451_6;
    c_451_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110011xxzz1z0zzxxx001zz1xx1z0z0zxxxzzzxzzxxxxxxxzxzxxzxxxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
