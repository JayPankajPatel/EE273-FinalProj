class c_1424_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1424_6;
    c_1424_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011x1z1z1zxxz01xz1xxzxz1zxz01110zzzzxxxzzzzzxzxzxxxxxxzzzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
