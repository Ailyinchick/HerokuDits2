package incubator.Practice;

import org.testng.annotations.Test;

public class PractiseTest {

    @Test
    public void firstTest() {
        System.out.println("Hello");
    }

    @Test
    public void inheritTest() {
        B b = new B();
        b.VarArgs(1, 2, 3, 5, 7, 4, 3, 6, 3, 6, 2);
    }

    @Test
    public void instanceTest() {
        B b = new B();
        System.out.println(b instanceof A);
        ;
    }

    @Test
    public void stringTest() {
        String a = "str";
        boolean c = true;
        int b = 5;
        System.out.println(++b);
    }

}