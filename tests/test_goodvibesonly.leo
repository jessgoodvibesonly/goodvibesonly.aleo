// The 'test_goodvibesonly' test program.
import goodvibesonly.aleo;
program test_goodvibesonly.aleo {
    @test
    script test_it() {
        let result: u32 = goodvibesonly.aleo/main(1u32, 2u32);
        assert_eq(result, 3u32);
    }

    @test
    @should_fail
    transition do_nothing() {
        let result: u32 = goodvibesonly.aleo/main(2u32, 3u32);
        assert_eq(result, 3u32);
    }
}
