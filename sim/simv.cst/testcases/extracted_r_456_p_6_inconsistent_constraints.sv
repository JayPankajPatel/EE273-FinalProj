class c_456_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_456_6;
    c_456_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0xx01xz00xxz0zzx11zxxx111xx010zxxzxzzxxxzzxxzxzzzxzxzzzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
