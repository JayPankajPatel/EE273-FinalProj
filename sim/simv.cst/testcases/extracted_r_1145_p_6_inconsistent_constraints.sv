class c_1145_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1145_6;
    c_1145_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1110x0z1xxxx01x10x00xz1001z00110xxxzzxzzxzzzzxxxzzzxzxzzzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
