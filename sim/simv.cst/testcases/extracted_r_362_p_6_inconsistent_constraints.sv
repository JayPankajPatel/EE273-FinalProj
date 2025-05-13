class c_362_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_362_6;
    c_362_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx11111010xzx1110x10x01xx1xxz00xzxzzzzzxxzzzzzxxxxxzzxxxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
