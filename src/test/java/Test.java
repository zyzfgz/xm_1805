import java.util.Random;

/**
 * Created by zyz on 2018/10/30.
 */
public class Test {

    public static void main(String[] args) {
        String[] arr={"范广早","开苗苗","陈淑妹"};
        Random ran=new Random();
        int index = ran.nextInt(arr.length);
        System.out.println(arr[index]);
    }
}
