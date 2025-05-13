class c_1492_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1492_6;
    c_1492_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xx1zzxz0z10100z111110z0xz0zzx1zxxxzzxzxxxxzzxxzzzzzzzxzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
