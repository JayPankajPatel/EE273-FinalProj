class c_267_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_267_6;
    c_267_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1z01xxx010xz10z11zzxz01xz1x001zxzxxxzzzxzxzzxxxzzzxxxxzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
