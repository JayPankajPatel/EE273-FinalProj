class c_643_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_643_6;
    c_643_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzzxzz0z1zz0zzx1xxx1z011zx0zz00zzxxzxxxxxzxxxzzzxxxxzxxxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
