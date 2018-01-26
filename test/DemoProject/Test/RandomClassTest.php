<?php

namespace DemoProject\Test;

use DemoProject\RandomClass;
use PHPUnit\Framework\TestCase;

class RandomClassTest extends TestCase
{
    /**
     * @test
     */
    public function it_return5()
    {
        $SUT = new RandomClass();

        $this->assertEquals(5, $SUT->return5());
    }
}
