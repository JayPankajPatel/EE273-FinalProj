class c_1334_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1334_6;
    c_1334_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1z01z0xzx00110zx011z0z00z10xzzxxxzxzxzxzxxzxxxzxzzxxxxzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
