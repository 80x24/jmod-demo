package crypto;

import java.nio.charset.StandardCharsets;
import org.bouncycastle.crypto.digests.Blake2bDigest;
import org.bouncycastle.util.encoders.Hex;

public class Main {
    public static void main(String[] args) {
        Blake2bDigest digest = new Blake2bDigest(256);
        byte[] data = "YELLOW SUBMARINE".getBytes(StandardCharsets.UTF_8);
        byte[] hash = new byte[32];
        digest.update(data, 0, data.length);
        digest.doFinal(hash, 0);
        System.out.println(Hex.toHexString(hash));
    }
}
