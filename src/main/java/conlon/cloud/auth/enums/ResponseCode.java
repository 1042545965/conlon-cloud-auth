package conlon.cloud.auth.enums;

/**
 * 全局异常码
 *
 * @author Journey
 * @version 创建时间：2019年7月17日 下午4:18:31
 * @ClassName 类名称
 * @Description 类描述
 */
public enum ResponseCode {

    /**
     * 请求成功
     */
    success("000000", "操作成功")
    /**
     * 请求失败
     */
    , fail("999999", "网络繁忙，请稍后再试!")


    ;

    private String resultCode;
    private String resultMsg;

    ResponseCode(String resultCode, String resultMsg) {
        this.resultCode = resultCode;
        this.resultMsg = resultMsg;
    }

    public String getResultCode() {
        return resultCode;
    }

    public String getCodeStr() {
        return resultCode + "";
    }

    public void setResultCode(String resultCode) {
        this.resultCode = resultCode;
    }

    public String getResultMsg() {
        return resultMsg;
    }

    public ResponseCode setResultMsg(String resultMsg) {
        this.resultMsg = resultMsg;
        return this;
    }

    public static String getMsgByCode(String resultCode) {
        ResponseCode[] values = ResponseCode.values();
        for (ResponseCode ec : values) {
            if (ec.resultCode.equals(resultCode)) {
                return ec.resultMsg;
            }
        }
        return "";
    }
}
