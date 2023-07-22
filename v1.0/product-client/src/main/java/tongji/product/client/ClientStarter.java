package tongji.product.client;
import com.hundsun.jrescloud.common.boot.CloudApplication;
import com.hundsun.jrescloud.common.boot.CloudBootstrap;

public class ClientStarter {
    public static void main(String[] args){
        CloudBootstrap.run(ClientStarter.class, args);
    }
}
