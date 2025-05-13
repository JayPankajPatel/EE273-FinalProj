class c_66_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_66_6;
    c_66_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz1zxzz00xx0x0z0000zzxz00x1z01xxzzzzxzzzzzxxxzzzxzzxxxzzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
