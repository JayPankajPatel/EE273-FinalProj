class c_686_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_686_6;
    c_686_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx100z00x011111x0zx0x1xz00110zzzxxxxxzzxzzzxzzxxxxxzzzzxxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
