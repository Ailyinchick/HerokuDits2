package incubator.Practice;

public class B extends A {

    B() {
     //   System.out.println("По умолчанию B");
    }

    B(String str) {
        System.out.println("Со стрингой B");
    }

    public void VarArgs(int... in) {
        for (int i : in
        ) {
            System.out.println(i);
        }
    }
}
