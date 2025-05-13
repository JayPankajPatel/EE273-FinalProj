class c_638_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_638_6;
    c_638_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz1xxxx111xzxx00zzx0x0xxx1zxx00xzxxxzzxxxzxzzzzzxxzzzxzxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
