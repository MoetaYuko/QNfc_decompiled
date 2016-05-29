.class public Lcom/android/nfc/handover/WiFiHandover;
.super Lcom/android/nfc/handover/Handover;
.source "WiFiHandover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/WiFiHandover$ScanAPTimerTask;
    }
.end annotation


# static fields
.field private static final AP_KEYTYPE_INDEX:I = 0x3

.field private static final AP_KEY_INDEX:I = 0x2

.field private static final AP_MAC_INDEX:I = 0x0

.field private static final AP_SSID_INDEX:I = 0x1

.field private static final ARP_FILE_PATH:Ljava/lang/String; = "/proc/net/arp"

.field private static final BEAM_STATE_CONNENTED:I = 0x2

.field private static final BEAM_STATE_CONNENTING:I = 0x1

.field private static final BEAM_STATE_DISCONNENTED:I = 0x4

.field private static final BEAM_STATE_INITIAL:I = -0x1

.field private static final COM_HUAWEI_HWBEAM_SOFTAP:Ljava/lang/String; = "com.huawei.HwBeam.SoftAP"

.field private static final DBG:Z = true

.field private static final DEFAULT_AP_IP_ADDRESS:Ljava/lang/String; = "192.168.43.1"

.field private static final DEFAULT_DHCP_SERVERADDRESS:I = 0x101a8c0

.field public static final HANDLE_MSG_AP_STARTED:I = 0x65

.field public static final HANDLE_MSG_AP_START_RECEIVE_FILE:I = 0x6c

.field public static final HANDLE_MSG_AP_START_SEND_FILE:I = 0x6b

.field public static final HANDLE_MSG_START_AP:I = 0x64

.field public static final HANDLE_MSG_STA_START_RECEIVE_FILE:I = 0x6e

.field public static final HANDLE_MSG_STA_START_SEND_FILE:I = 0x6d

.field public static final HANDLE_MSG_SUPPLICANT_STARTED:I = 0x6f

.field public static final HANDLE_MSG_WIFI_AP_STA_JOIN:I = 0x6a

.field public static final HANDLE_MSG_WIFI_AP_STA_LEAVE:I = 0x70

.field public static final HANDLE_MSG_WIFI_ENABLE:I = 0x67

.field public static final HANDLE_MSG_WIFI_FILTRATE_SCAN_RESULT:I = 0x72

.field public static final HANDLE_MSG_WIFI_SOFT_AP_RESET:I = 0x74

.field public static final HANDLE_MSG_WIFI_START_SCAN:I = 0x71

.field public static final HANDLE_MSG_WIFI_STATION_RESET:I = 0x73

.field public static final HANDLE_MSG_WIFI_STA_CONNECTED:I = 0x68

.field public static final HANDLE_MSG_WIFI_STA_RECONNECTED_AP:I = 0x69

.field public static final HANDLE_MSG_WIFI_STA_START_CONNECT_AP:I = 0x66

.field private static final KEYTYPE_OPEN:I = 0x0

.field private static final KEYTYPE_PSK:I = 0x2

.field private static final KEYTYPE_WEP:I = 0x1

.field private static final LOCAL_IP:I = 0x0

.field private static final MAX_CONNECT_AP:I = 0xa

.field public static final MSG_CONN_TIMEOUT_CHECK:I = 0x75

.field private static final PREFIX_SSID:Ljava/lang/String; = "HWBeam_"

.field private static final REMOTE_IP:I = 0x1

.field private static final SCAN_AP_PERIOD_TIME:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "WiFiHandover"

.field public static final TNF_WIFI_HANDOVER_RECORD:S = 0x2s

.field static final TYPE_WIFI_HANDOVER_RECORD:[B

.field private static final TYPE_WLAN_SHARE_RECORD:[B

.field public static final WIFI_AP_STA_JOIN:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STA_JOIN"

.field public static final WIFI_AP_STA_LEAVE:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STA_LEAVE"

.field private static final WIFI_CONNECTED_SOFTAP:Ljava/lang/String; = "wifi_connected_softap"

.field private static final WIFI_ENABLE:Ljava/lang/String; = "wifi_enable"

.field private static final WIFI_SOFT_AP_STA_JOIN:Ljava/lang/String; = "wifi_soft_ap_sta_join"

.field private static final WLAN_SHARE_FAILURE:Ljava/lang/String; = "wlan_share_failure"

.field private static final WLAN_SHARE_SUCCESS:Ljava/lang/String; = "wlan_share_success"

.field private static final WPA_SUPPLICANT_8_TI_KEYTYPE_OPEN:I = 0x4

.field private static final WPA_SUPPLICANT_8_TI_KEYTYPE_PSK:I = 0x2


# instance fields
.field private connectAPListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private isCreateNewAPConfiguration:Z

.field private isRegisterAPReceiver:Z

.field private isRegisterHandoverReceiver:Z

.field private isRegisterWIFIReceiver:Z

.field private isStaTransmitFiles:Z

.field private isWifiHandoverBeam:Z

.field private volatile mBeamState:I

.field private mConApNum:I

.field private mConfigInfo:Lcom/android/nfc/handover/ConfigInfo;

.field private mContext:Landroid/content/Context;

.field private mDefault_APConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mHandler:Landroid/os/Handler;

.field private mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

.field private mHandoverReceiver:Landroid/content/BroadcastReceiver;

.field private mKey:Ljava/lang/String;

.field private mKeyType:I

.field private mLocalDeviceMac:Ljava/lang/String;

.field private mNetworkId:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRandom_SSID:J

.field private mRemoteDeviceMac:Ljava/lang/String;

.field private mSSID:Ljava/lang/String;

.field private mSoftApReceiver:Landroid/content/BroadcastReceiver;

.field private mTimer:Ljava/util/Timer;

.field private mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;

.field private mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStaReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "application/wifi.handover.type"

    const-string v1, "US_ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WIFI_HANDOVER_RECORD:[B

    .line 80
    const-string v0, "application/wlan.connect.type"

    const-string v1, "US_ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WLAN_SHARE_RECORD:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverManager"    # Lcom/android/nfc/handover/HandoverDataParser;

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/nfc/handover/Handover;-><init>()V

    .line 1223
    new-instance v0, Lcom/android/nfc/handover/WiFiHandover$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/WiFiHandover$1;-><init>(Lcom/android/nfc/handover/WiFiHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mSoftApReceiver:Landroid/content/BroadcastReceiver;

    .line 1398
    new-instance v0, Lcom/android/nfc/handover/WiFiHandover$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/WiFiHandover$2;-><init>(Lcom/android/nfc/handover/WiFiHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->connectAPListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 1540
    new-instance v0, Lcom/android/nfc/handover/WiFiHandover$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/WiFiHandover$3;-><init>(Lcom/android/nfc/handover/WiFiHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiStaReceiver:Landroid/content/BroadcastReceiver;

    .line 1691
    new-instance v0, Lcom/android/nfc/handover/WiFiHandover$4;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/WiFiHandover$4;-><init>(Lcom/android/nfc/handover/WiFiHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    .line 1791
    new-instance v0, Lcom/android/nfc/handover/WiFiHandover$5;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/WiFiHandover$5;-><init>(Lcom/android/nfc/handover/WiFiHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    .line 249
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    .line 250
    iput-object p2, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    .line 251
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/WiFiHandover;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/ConfigInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mConfigInfo:Lcom/android/nfc/handover/ConfigInfo;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/nfc/handover/WiFiHandover;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/nfc/handover/WiFiHandover;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->unRegisterHandoverReceiver(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/nfc/handover/WiFiHandover;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getWifiAPState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Lcom/android/nfc/handover/WiFiHandover;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover;->mDefault_APConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->createNewWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/nfc/handover/WiFiHandover;Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "x2"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/handover/WiFiHandover;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/nfc/handover/WiFiHandover;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/nfc/handover/WiFiHandover;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/nfc/handover/WiFiHandover;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getLocalMac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/nfc/handover/WiFiHandover;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getApLinkedStaList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/nfc/handover/WiFiHandover;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->getIpAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/nfc/handover/WiFiHandover;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->getIpByMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/nfc/handover/WiFiHandover;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->setWifiSTAEnabled(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/nfc/handover/WiFiHandover;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->connectToRemoteAp()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/nfc/handover/WiFiHandover;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mConApNum:I

    return v0
.end method

.method static synthetic access$2708(Lcom/android/nfc/handover/WiFiHandover;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mConApNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mConApNum:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/nfc/handover/WiFiHandover;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/nfc/handover/WiFiHandover;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/nfc/handover/WiFiHandover;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/nfc/handover/WiFiHandover;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->cancelScanAPTimer()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/nfc/handover/WiFiHandover;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/nfc/handover/WiFiHandover;->mNetworkId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/nfc/handover/WiFiHandover;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isStaTransmitFiles:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/nfc/handover/WiFiHandover;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/nfc/handover/WiFiHandover;->isStaTransmitFiles:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/HandoverDataParser;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    return-object v0
.end method

.method private declared-synchronized cancelScanAPTimer()V
    .locals 2

    .prologue
    .line 1516
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1518
    const-string v0, "WiFiHandover"

    const-string v1, "mTimer is cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1522
    :cond_0
    monitor-exit p0

    return-void

    .line 1516
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized connectToRemoteAp()V
    .locals 5

    .prologue
    .line 1431
    monitor-enter p0

    const/4 v2, 0x2

    :try_start_0
    iget v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    if-ne v2, v3, :cond_0

    .line 1433
    const-string v2, "WiFiHandover"

    const-string v3, "sta has connected RemoteAp"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->cancelScanAPTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    :goto_0
    monitor-exit p0

    return-void

    .line 1438
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 1445
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1446
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1449
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/handover/WiFiHandover;->disConnectCurrentAP()V

    .line 1451
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mKey:Ljava/lang/String;

    iget v4, p0, Lcom/android/nfc/handover/WiFiHandover;->mKeyType:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/nfc/handover/WiFiHandover;->createNewWifiConfiguration(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1452
    .local v1, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_4

    .line 1455
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1456
    .local v0, "networkID":I
    if-gez v0, :cond_2

    .line 1457
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1459
    :cond_2
    const-string v2, "WiFiHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    if-gez v0, :cond_3

    .line 1461
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1431
    .end local v0    # "networkID":I
    .end local v1    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1465
    .restart local v0    # "networkID":I
    .restart local v1    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->connectAPListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1469
    .end local v0    # "networkID":I
    :cond_4
    const-string v2, "WiFiHandover"

    const-string v3, "wifiConfiguration, = null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private createNewWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .prologue
    .line 949
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 950
    .local v0, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HWBeam_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mRandom_SSID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 952
    const v1, 0x7fffffff

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 953
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mKey:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 955
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 956
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 958
    return-object v0
.end method

.method private declared-synchronized createNewWifiConfiguration(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "keyType"    # I

    .prologue
    .line 1340
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1342
    :try_start_0
    const-string v1, "WiFiHandover"

    const-string v2, "the ssid of connect ap is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1344
    const/4 v0, 0x0

    .line 1392
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1347
    :cond_0
    :try_start_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1348
    .local v0, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1351
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 1353
    :pswitch_0
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1354
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1355
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1356
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1357
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1358
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1359
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1340
    .end local v0    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1364
    .restart local v0    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :pswitch_1
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1365
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1366
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1367
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1368
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1369
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1370
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1371
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1372
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto/16 :goto_0

    .line 1376
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1378
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1379
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1380
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1381
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1383
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1384
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1385
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;
    .locals 1
    .param p1, "tnf"    # S
    .param p2, "type"    # [B
    .param p3, "id"    # [B
    .param p4, "payload"    # [B

    .prologue
    .line 337
    new-instance v0, Landroid/nfc/NdefRecord;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v0
.end method

.method private createWifiAPRecordPayload()[B
    .locals 14

    .prologue
    const/4 v9, 0x0

    const-wide v12, 0x41957529fc000000L    # 8.9999999E7

    const-wide v10, 0x416312d000000000L    # 1.0E7

    .line 436
    iget-object v7, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v7, :cond_0

    .line 437
    new-array v7, v9, [B

    .line 487
    :goto_0
    return-object v7

    .line 439
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 440
    .local v0, "apInfo":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getLocalMac()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    .line 441
    iget-object v7, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 445
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->isCurrentWifiApEnable()Z

    move-result v7

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    if-nez v7, :cond_7

    .line 448
    :cond_1
    const-string v7, "WiFiHandover"

    const-string v8, "CurrentWifiApEnable is true or is not WifiHandoverBeam "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 451
    .local v6, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_4

    .line 452
    const/4 v3, 0x0

    .line 453
    .local v3, "keyMgmt":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7}, Ljava/util/BitSet;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 454
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 455
    sget-object v7, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_2

    .line 456
    sget-object v7, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v7, v2

    .line 453
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 460
    :cond_3
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    .end local v2    # "k":I
    .end local v3    # "keyMgmt":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getApLinkedStaList()Ljava/util/List;

    move-result-object v4

    .line 463
    .local v4, "linkedStaList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 464
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 467
    :cond_5
    iget-boolean v7, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    if-nez v7, :cond_6

    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->isCurrentWifiApEnable()Z

    move-result v7

    if-nez v7, :cond_6

    .line 468
    iget-object v7, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 487
    .end local v1    # "i":I
    .end local v4    # "linkedStaList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v6    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/nfc/handover/WiFiHandover;->formatByteArray(Ljava/lang/String;)[B

    move-result-object v7

    goto/16 :goto_0

    .line 474
    :cond_7
    const-string v7, "WiFiHandover"

    const-string v8, "CurrentWifiApEnable is false,we should create a new ap"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    .line 477
    .local v5, "random":Ljava/security/SecureRandom;
    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v8

    mul-double/2addr v8, v12

    add-double/2addr v8, v10

    double-to-long v8, v8

    iput-wide v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mRandom_SSID:J

    .line 478
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v8

    mul-double/2addr v8, v12

    add-double/2addr v8, v10

    double-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/nfc/handover/WiFiHandover;->mKey:Ljava/lang/String;

    .line 480
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HWBeam_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mRandom_SSID:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v8, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method private doHandover(Landroid/nfc/NdefMessage;)V
    .locals 9
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 498
    const/4 v1, 0x0

    .line 501
    .local v1, "respone":[Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->getWiFiHandoverRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;

    move-result-object v2

    .line 502
    .local v2, "wifiHandoverRecord":Landroid/nfc/NdefRecord;
    if-eqz v2, :cond_0

    .line 503
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 510
    .end local v2    # "wifiHandoverRecord":Landroid/nfc/NdefRecord;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 558
    :cond_1
    :goto_1
    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 513
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    array-length v3, v1

    if-lt v3, v7, :cond_1

    .line 517
    const-string v3, "WiFiHandover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nfc respone is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "wifi_connected_softap"

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 520
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/WiFiHandover;->registerWifiStaReceiver(Landroid/content/Context;)V

    .line 521
    iput v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 522
    iget-boolean v3, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    if-eqz v3, :cond_4

    .line 523
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6d

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 547
    :goto_2
    array-length v3, v1

    if-le v3, v7, :cond_3

    .line 548
    aget-object v3, v1, v7

    iput-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;

    .line 550
    const-string v3, "WiFiHandover"

    const-string v4, "mRemoteDeviceMac."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_3
    sget-boolean v3, Lcom/android/nfc/handover/Constants;->supportSoftAPforHWBeam:Z

    if-eqz v3, :cond_1

    .line 555
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->resetConnTimeout()V

    goto :goto_1

    .line 525
    :cond_4
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v3, v8, v6}, Lcom/android/nfc/handover/HandoverDataParser;->sendFastConnectResult(II)V

    goto :goto_2

    .line 528
    :cond_5
    const-string v3, "wifi_soft_ap_sta_join"

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 530
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/nfc/handover/WiFiHandover;->registerSoftApReceiver(Landroid/content/Context;)V

    .line 531
    iput v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 532
    iget-boolean v3, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    if-eqz v3, :cond_6

    .line 533
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6b

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 535
    :cond_6
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v3, v8, v6}, Lcom/android/nfc/handover/HandoverDataParser;->sendFastConnectResult(II)V

    goto :goto_2

    .line 540
    :cond_7
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/nfc/handover/WiFiHandover;->registerSoftApReceiver(Landroid/content/Context;)V

    .line 541
    iput v7, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 542
    iput-boolean v7, p0, Lcom/android/nfc/handover/WiFiHandover;->isCreateNewAPConfiguration:Z

    .line 543
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method private formatByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 329
    if-nez p1, :cond_0

    .line 330
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 332
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private getApLinkedStaList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1163
    const-string v7, "WiFiHandover"

    const-string v8, "getApLinkedStaList"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1165
    .local v5, "mLinkedStaList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1166
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 1169
    .local v4, "linkedSta":[Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    const-string v9, "/proc/net/arp"

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1172
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    .line 1173
    const-string v7, " +"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1174
    .local v6, "splitted":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v7, v6

    const/4 v8, 0x4

    if-lt v7, v8, :cond_0

    .line 1176
    const/4 v7, 0x0

    const/4 v8, 0x3

    aget-object v8, v6, v8

    aput-object v8, v4, v7

    .line 1177
    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-object v8, v6, v8

    aput-object v8, v4, v7

    .line 1179
    const-string v7, "WiFiHandover"

    const-string v8, "the link Sta mac"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const-string v7, "WiFiHandover"

    const-string v8, "the link Sta ip "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_0
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1187
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "splitted":[Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 1188
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1191
    if-eqz v0, :cond_1

    .line 1192
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1197
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-object v5

    .line 1191
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 1192
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    move-object v0, v1

    .line 1195
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1193
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 1194
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 1196
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1193
    .end local v3    # "line":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 1194
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1190
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1191
    :goto_3
    if-eqz v0, :cond_4

    .line 1192
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1195
    :cond_4
    :goto_4
    throw v7

    .line 1193
    :catch_3
    move-exception v2

    .line 1194
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1190
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1187
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method private getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 998
    const/4 v0, 0x0

    .line 1000
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0
.end method

.method private getIpAddress(I)Ljava/lang/String;
    .locals 10
    .param p1, "type"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 855
    iget-object v4, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 856
    .local v1, "dhcpinfo":Landroid/net/DhcpInfo;
    if-nez v1, :cond_0

    .line 858
    const-string v4, "WiFiHandover"

    const-string v5, "dhcpinfo is null;"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v4, 0x0

    .line 909
    :goto_0
    return-object v4

    .line 861
    :cond_0
    const/4 v2, 0x0

    .line 862
    .local v2, "ip":I
    if-nez p1, :cond_5

    .line 863
    iget-object v4, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 864
    iget v2, v1, Landroid/net/DhcpInfo;->ipAddress:I

    .line 899
    :cond_1
    :goto_1
    const/4 v4, 0x4

    new-array v0, v4, [I

    .line 900
    .local v0, "b":[I
    shr-int/lit8 v4, v2, 0x18

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v7

    .line 901
    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v6

    .line 902
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v8

    .line 903
    and-int/lit16 v4, v2, 0xff

    aput v4, v0, v9

    .line 905
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 906
    .local v3, "ipAddress":Ljava/lang/StringBuffer;
    aget v4, v0, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget v5, v0, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 908
    const-string v4, "WiFiHandover"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 865
    .end local v0    # "b":[I
    .end local v3    # "ipAddress":Ljava/lang/StringBuffer;
    :cond_2
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->isCurrentWifiApEnable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 867
    iget v2, v1, Landroid/net/DhcpInfo;->serverAddress:I

    .line 869
    const-string v4, "WiFiHandover"

    const-string v5, "get Loacl AP ip ."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    if-nez v2, :cond_3

    .line 871
    const-string v4, "192.168.43.1"

    goto/16 :goto_0

    .line 874
    :cond_3
    const v4, 0x101a8c0

    if-ne v2, v4, :cond_1

    .line 875
    const-string v4, "192.168.43.1"

    goto/16 :goto_0

    .line 879
    :cond_4
    const-string v4, "WiFiHandover"

    const-string v5, "ip is error"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 882
    :cond_5
    if-ne p1, v6, :cond_1

    .line 883
    iget-object v4, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 884
    iget v2, v1, Landroid/net/DhcpInfo;->serverAddress:I

    .line 886
    const-string v4, "WiFiHandover"

    const-string v5, "get remote AP ip ."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    if-nez v2, :cond_1

    .line 888
    const-string v4, "192.168.43.1"

    goto/16 :goto_0

    .line 893
    :cond_6
    const-string v4, "WiFiHandover"

    const-string v5, "get remote STA ip ."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v4, p0, Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/nfc/handover/WiFiHandover;->getIpByMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private getIpByMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 1142
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getApLinkedStaList()Ljava/util/List;

    move-result-object v2

    .line 1143
    .local v2, "mLinkedStaList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1144
    .local v0, "IpAddress":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1145
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1146
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1148
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v0, v4, v5

    .line 1145
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1152
    :cond_1
    return-object v0
.end method

.method private getKeyMgmtType(Ljava/lang/String;)I
    .locals 3
    .param p1, "KeyMgmt"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 1485
    if-nez p1, :cond_1

    .line 1498
    :cond_0
    :goto_0
    return v0

    .line 1488
    :cond_1
    const-string v2, "WPA2_PSK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1489
    goto :goto_0

    .line 1491
    :cond_2
    const-string v2, "WPA_PSK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 1492
    goto :goto_0

    .line 1494
    :cond_3
    const-string v1, "WPA_EAP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1495
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getLocalMac()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1118
    const/4 v0, 0x0

    .line 1119
    .local v0, "mac":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 1120
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 1122
    :cond_0
    return-object v0
.end method

.method private getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 1130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getWiFiHandoverRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;
    .locals 6
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 619
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 620
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 621
    .local v3, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v4

    sget-object v5, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WIFI_HANDOVER_RECORD:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 627
    .end local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    :goto_1
    return-object v3

    .line 620
    .restart local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "record":Landroid/nfc/NdefRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    .end local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getWifiAPState()I
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 930
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getWlanShareRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;
    .locals 6
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 639
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 640
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 641
    .local v3, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v4

    sget-object v5, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WLAN_SHARE_RECORD:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 647
    .end local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    :goto_1
    return-object v3

    .line 640
    .restart local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "record":Landroid/nfc/NdefRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 647
    .end local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getWpaSuppConfig()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1644
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1645
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 1646
    .local v1, "ssid_tep":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 1647
    .local v2, "wi":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ltz v3, :cond_0

    .line 1650
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/huawei/android/net/wifi/NfcWifiManagerEx;->getWpaSuppConfig(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1658
    .end local v1    # "ssid_tep":Ljava/lang/String;
    .end local v2    # "wi":Landroid/net/wifi/WifiInfo;
    :goto_0
    return-object v3

    .line 1651
    .restart local v1    # "ssid_tep":Ljava/lang/String;
    .restart local v2    # "wi":Landroid/net/wifi/WifiInfo;
    :catch_0
    move-exception v0

    .line 1652
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "WiFiHandover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoSuchMethodException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1657
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ssid_tep":Ljava/lang/String;
    .end local v2    # "wi":Landroid/net/wifi/WifiInfo;
    :cond_0
    const-string v3, "WiFiHandover"

    const-string v4, "getWpaSuppConfig :: wifi is not connect a ap ,so we can not share  wlan  info"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initianTransmitManager()V
    .locals 2

    .prologue
    .line 352
    const-string v0, "WiFiHandover"

    const-string v1, "initianTransmitManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lcom/android/nfc/handover/TransmitManager;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/handover/TransmitManager;-><init>(Lcom/android/nfc/handover/Handover;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;

    if-nez v0, :cond_1

    .line 357
    new-instance v0, Lcom/android/nfc/handover/TransmitManager;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/handover/TransmitManager;-><init>(Lcom/android/nfc/handover/Handover;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;

    .line 359
    :cond_1
    return-void
.end method

.method private isCurrentWifiApEnable()Z
    .locals 2

    .prologue
    .line 935
    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getWifiAPState()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getWifiAPState()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 936
    :cond_0
    const/4 v0, 0x1

    .line 938
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRemoteSTAConnectAP(Ljava/lang/String;)Z
    .locals 5
    .param p1, "remotestamac"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 969
    if-nez p1, :cond_0

    move v3, v4

    .line 979
    :goto_0
    return v3

    .line 972
    :cond_0
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getApLinkedStaList()Ljava/util/List;

    move-result-object v1

    .line 973
    .local v1, "mLinkedStaList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 974
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 975
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 976
    const/4 v3, 0x1

    goto :goto_0

    .line 974
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v3, v4

    .line 979
    goto :goto_0
.end method

.method private isSTAConnectRemoteAP([Ljava/lang/String;)Z
    .locals 7
    .param p1, "ip"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1616
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getLocalMac()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    .line 1617
    iget-object v5, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 1619
    const-string v5, "WiFiHandover"

    const-string v6, "mLocalDeviceMac is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    :cond_0
    :goto_0
    return v4

    .line 1622
    :cond_1
    iget-object v5, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 1623
    .local v3, "wi":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ltz v5, :cond_0

    .line 1624
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 1625
    .local v2, "ssid":Ljava/lang/String;
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_0

    .line 1626
    iget-object v5, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    aget-object v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1627
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 1628
    if-eqz v2, :cond_2

    aget-object v5, p1, v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1629
    const/4 v4, 0x1

    goto :goto_0

    .line 1627
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1625
    .end local v1    # "j":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private parseNdefRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;
    .locals 13
    .param p1, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    const/4 v12, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v7, 0x0

    .line 661
    const/4 v5, 0x0

    .line 662
    .local v5, "response":Landroid/nfc/NdefRecord;
    const/4 v2, 0x0

    .line 664
    .local v2, "payload":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 665
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v3, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "payload":Ljava/lang/String;
    .local v3, "payload":Ljava/lang/String;
    move-object v2, v3

    .line 671
    .end local v3    # "payload":Ljava/lang/String;
    .restart local v2    # "payload":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 755
    :cond_1
    :goto_1
    return-object v7

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 674
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 675
    .local v4, "remoteAPInfo":[Ljava/lang/String;
    array-length v1, v4

    .line 676
    .local v1, "length":I
    if-eqz v1, :cond_1

    .line 679
    const/4 v8, 0x0

    aget-object v8, v4, v8

    iput-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;

    .line 680
    if-lt v1, v12, :cond_1

    .line 683
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getLocalMac()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    .line 684
    aget-object v8, v4, v10

    iput-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;

    .line 686
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 691
    const-string v8, "WiFiHandover"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSSID == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const-string v8, "WiFiHandover"

    const-string v9, "mRemoteMac."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-boolean v8, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/nfc/handover/WiFiHandover;->isRemoteSTAConnectAP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 695
    iput v11, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 696
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/android/nfc/handover/WiFiHandover;->registerSoftApReceiver(Landroid/content/Context;)V

    .line 697
    sget-object v8, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WIFI_HANDOVER_RECORD:[B

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wifi_connected_softap\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/nfc/handover/WiFiHandover;->formatByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {p0, v11, v8, v7, v9}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v5

    .line 700
    const-string v7, "WiFiHandover"

    const-string v8, "remote device wifi sta has connected this ap"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v7, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x6c

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 743
    :cond_3
    :goto_2
    iget-boolean v7, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    if-eqz v7, :cond_5

    .line 744
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    monitor-enter v8

    .line 746
    :try_start_1
    iget-object v7, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    iget-object v7, v7, Lcom/android/nfc/handover/HandoverDataParser;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

    invoke-virtual {v7}, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->resetHandoverTimer()V

    .line 747
    iget-object v7, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    iget-object v9, p0, Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/nfc/handover/HandoverDataParser;->getOrCreateHandoverTransfer(Ljava/lang/String;ZZ)Lcom/android/nfc/beam/BeamTransferManager;

    move-result-object v6

    .line 748
    .local v6, "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    if-eqz v6, :cond_4

    .line 749
    iget-object v7, v6, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    iget-object v9, p0, Lcom/android/nfc/handover/WiFiHandover;->mConfigInfo:Lcom/android/nfc/handover/ConfigInfo;

    invoke-static {v9}, Lcom/android/nfc/handover/TransmitClient;->getFileName(Lcom/android/nfc/handover/ConfigInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileName(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v6}, Lcom/android/nfc/beam/BeamTransferManager;->updateNotification()V

    .line 752
    :cond_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    :cond_5
    move-object v7, v5

    .line 755
    goto/16 :goto_1

    .line 703
    :cond_6
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/WiFiHandover;->registerWifiStaReceiver(Landroid/content/Context;)V

    .line 704
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-direct {p0, v4}, Lcom/android/nfc/handover/WiFiHandover;->isSTAConnectRemoteAP([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 706
    iput v11, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 707
    sget-object v8, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WIFI_HANDOVER_RECORD:[B

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wifi_soft_ap_sta_join\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/nfc/handover/WiFiHandover;->formatByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {p0, v11, v8, v7, v9}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v5

    .line 710
    const-string v7, "WiFiHandover"

    const-string v8, "this device wifi sta has connected remote soft ap"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-boolean v7, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    if-eqz v7, :cond_3

    .line 712
    iget-object v7, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x6e

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 716
    :cond_7
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 718
    const/4 v8, 0x4

    if-lt v1, v8, :cond_1

    .line 721
    aget-object v8, v4, v11

    iput-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mKey:Ljava/lang/String;

    .line 722
    aget-object v8, v4, v12

    invoke-direct {p0, v8}, Lcom/android/nfc/handover/WiFiHandover;->getKeyMgmtType(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mKeyType:I

    .line 724
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 727
    const-string v8, "WiFiHandover"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wifi has enabled,but not connceted "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "we start conncete this ap"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 729
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x71

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 738
    :goto_3
    sget-object v8, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WIFI_HANDOVER_RECORD:[B

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wifi_enable\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/nfc/handover/WiFiHandover;->formatByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {p0, v11, v8, v7, v9}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v5

    goto/16 :goto_2

    .line 734
    :cond_8
    const-string v8, "WiFiHandover"

    const-string v9, "open  wifi ,and conncete ap"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x67

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 752
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7
.end method

.method private parseWlanShareRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;
    .locals 14
    .param p1, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 767
    iget-object v6, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/nfc/handover/WiFiHandover;->registerWifiStaReceiver(Landroid/content/Context;)V

    .line 768
    if-eqz p1, :cond_7

    .line 770
    iput v13, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 772
    const/4 v2, 0x0

    .line 774
    .local v2, "wlanInfo":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v3, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "wlanInfo":Ljava/lang/String;
    .local v3, "wlanInfo":Ljava/lang/String;
    move-object v2, v3

    .line 780
    .end local v3    # "wlanInfo":Ljava/lang/String;
    .restart local v2    # "wlanInfo":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v12, :cond_1

    .line 781
    :cond_0
    sget-object v6, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WLAN_SHARE_RECORD:[B

    const-string v7, "wlan_share_failure"

    invoke-direct {p0, v7}, Lcom/android/nfc/handover/WiFiHandover;->formatByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {p0, v9, v6, v10, v7}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v6

    .line 842
    .end local v2    # "wlanInfo":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 775
    .restart local v2    # "wlanInfo":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 785
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v6, "WiFiHandover"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseWlanShareRecord,wlanInfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const-string v6, ":"

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 788
    .local v4, "wlaninfos":[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    .line 789
    aget-object v6, v4, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 794
    .local v1, "ssid_length":I
    const/4 v6, 0x4

    aget-object v7, v4, v12

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 795
    iput v11, p0, Lcom/android/nfc/handover/WiFiHandover;->mKeyType:I

    .line 806
    :goto_2
    aget-object v6, v4, v9

    invoke-virtual {v6, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;

    .line 807
    iget v6, p0, Lcom/android/nfc/handover/WiFiHandover;->mKeyType:I

    if-eqz v6, :cond_2

    .line 809
    aget-object v6, v4, v9

    aget-object v7, v4, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/nfc/handover/WiFiHandover;->mKey:Ljava/lang/String;

    .line 817
    :cond_2
    iget-object v6, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 818
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getWpaSuppConfig()Ljava/lang/String;

    move-result-object v5

    .line 819
    .local v5, "wpaSuppConfig":Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 821
    const-string v6, "WiFiHandover"

    const-string v7, "Wifi already connected the network, network share success."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iput v9, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 834
    .end local v5    # "wpaSuppConfig":Ljava/lang/String;
    :goto_3
    sget-object v6, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WLAN_SHARE_RECORD:[B

    const-string v7, "wlan_share_success"

    invoke-direct {p0, v7}, Lcom/android/nfc/handover/WiFiHandover;->formatByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {p0, v9, v6, v10, v7}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v6

    goto :goto_1

    .line 797
    :cond_3
    aget-object v6, v4, v12

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v9, v6, :cond_4

    .line 798
    iput v9, p0, Lcom/android/nfc/handover/WiFiHandover;->mKeyType:I

    goto :goto_2

    .line 801
    :cond_4
    sget-object v6, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WLAN_SHARE_RECORD:[B

    const-string v7, "wlan_share_failure"

    invoke-direct {p0, v7}, Lcom/android/nfc/handover/WiFiHandover;->formatByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {p0, v9, v6, v10, v7}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v6

    goto/16 :goto_1

    .line 825
    .restart local v5    # "wpaSuppConfig":Ljava/lang/String;
    :cond_5
    const-string v6, "WiFiHandover"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wifi has enabled,but not connceted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "we start this ap"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v6, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 827
    iget-object v6, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x71

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 831
    .end local v5    # "wpaSuppConfig":Ljava/lang/String;
    :cond_6
    const-string v6, "WiFiHandover"

    const-string v7, "WlanShare : open  wifi sta,and connect ap"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v6, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x67

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 840
    .end local v1    # "ssid_length":I
    .end local v2    # "wlanInfo":Ljava/lang/String;
    .end local v4    # "wlaninfos":[Ljava/lang/String;
    :cond_7
    const-string v6, "WiFiHandover"

    const-string v7, "parseWlanShareRecord is error"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v6, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v6, v9, v13}, Lcom/android/nfc/handover/HandoverDataParser;->sendFastConnectResult(II)V

    .line 842
    sget-object v6, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WLAN_SHARE_RECORD:[B

    const-string v7, "wlan_share_failure"

    invoke-direct {p0, v7}, Lcom/android/nfc/handover/WiFiHandover;->formatByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {p0, v9, v6, v10, v7}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v6

    goto/16 :goto_1
.end method

.method private registerHandoverReceiver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1669
    iget-boolean v1, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterHandoverReceiver:Z

    if-eqz v1, :cond_0

    .line 1682
    :goto_0
    return-void

    .line 1672
    :cond_0
    const-string v1, "WiFiHandover"

    const-string v2, "registerHandoverReceiver !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1674
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1675
    const-string v1, "com.android.nfc.handover.action.HANDOVER_TRANSFER_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1676
    const-string v1, "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1677
    const-string v1, "com.android.nfc.handover.action.HANDOVER_TRANSFER_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1679
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.android.nfc.permission.ACCESS_INTERFACE"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1681
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterHandoverReceiver:Z

    goto :goto_0
.end method

.method private declared-synchronized registerSoftApReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1208
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterAPReceiver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1221
    :goto_0
    monitor-exit p0

    return-void

    .line 1211
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1212
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1213
    const-string v1, "android.net.wifi.WIFI_AP_STA_JOIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1214
    const-string v1, "android.net.wifi.WIFI_AP_STA_LEAVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1216
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mSoftApReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1217
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterAPReceiver:Z

    .line 1219
    const-string v1, "WiFiHandover"

    const-string v2, "mSoftApReceiver isRegisterAPReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1208
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private resetConnTimeout()V
    .locals 5

    .prologue
    const/16 v4, 0x75

    .line 413
    const-string v0, "WiFiHandover"

    const-string v1, "resetConnTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 418
    return-void
.end method

.method private setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 4
    .param p1, "apconfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enable"    # Z

    .prologue
    .line 1005
    const/4 v1, 0x0

    .line 1006
    .local v1, "setWifiApOK":Z
    if-eqz p2, :cond_2

    .line 1007
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1009
    const-string v2, "WiFiHandover"

    const-string v3, "we should close wifi to open soft ap"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/nfc/handover/WiFiHandover;->setWifiSTAEnabled(Z)V

    .line 1013
    :cond_0
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->isCurrentWifiApEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1014
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1023
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->isCurrentWifiApEnable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1025
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1035
    :goto_1
    return v1

    .line 1018
    :cond_2
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->stopApAll()V

    goto :goto_0

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WiFiHandover"

    const-string v3, "DISALLOW_CONFIG_TETHERING is enabled for this user."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1030
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v1, 0x1

    .line 1031
    const-string v2, "WiFiHandover"

    const-string v3, " setWifiApEnabled/ SoftAp state is enabling or enabled."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setWifiSTAEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 1297
    :goto_0
    return-void

    .line 1287
    :cond_0
    if-eqz p1, :cond_2

    .line 1288
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->isCurrentWifiApEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1290
    const-string v0, "WiFiHandover"

    const-string v1, "we should close Soft ap to open wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/nfc/handover/WiFiHandover;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1296
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 1294
    :cond_2
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->stopStaAll()V

    goto :goto_1
.end method

.method private stopApAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1040
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 1042
    const-string v0, "WiFiHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRegisterAPReceiver is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterAPReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mSoftApReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterAPReceiver:Z

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mSoftApReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1045
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterAPReceiver:Z

    .line 1047
    const-string v0, "WiFiHandover"

    const-string v1, "mSoftApReceiver is unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    if-eqz v0, :cond_2

    .line 1050
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;

    if-eqz v0, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/TransmitManager;->closeServer()Z

    .line 1052
    iput-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    if-eqz v0, :cond_2

    .line 1055
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverDataParser;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->stopMonitoring()V

    .line 1058
    :cond_2
    iget-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isCreateNewAPConfiguration:Z

    if-eqz v0, :cond_3

    .line 1059
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mDefault_APConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1063
    :goto_0
    return-void

    .line 1061
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method private stopStaAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1301
    const-string v0, "WiFiHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRegisterWIFIReceiver is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterWIFIReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiStaReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterWIFIReceiver:Z

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiStaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1305
    const-string v0, "WiFiHandover"

    const-string v1, "mWifiStaReceiver is unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iput-boolean v3, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterWIFIReceiver:Z

    .line 1308
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    if-eqz v0, :cond_2

    .line 1309
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;

    if-eqz v0, :cond_1

    .line 1310
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/TransmitManager;->closeServer()Z

    .line 1311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;

    .line 1313
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    if-eqz v0, :cond_2

    .line 1314
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverDataParser;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->stopMonitoring()V

    .line 1317
    :cond_2
    iput-boolean v3, p0, Lcom/android/nfc/handover/WiFiHandover;->isStaTransmitFiles:Z

    .line 1318
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 1319
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->cancelScanAPTimer()V

    .line 1320
    return-void
.end method

.method private unRegisterHandoverReceiver(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1685
    iget-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterHandoverReceiver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1686
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterHandoverReceiver:Z

    .line 1689
    :cond_0
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    .line 347
    :cond_0
    return-void
.end method

.method public createDataRecord()Landroid/nfc/NdefRecord;
    .locals 4

    .prologue
    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    .line 376
    const/4 v0, 0x2

    sget-object v1, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WIFI_HANDOVER_RECORD:[B

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->createWifiAPRecordPayload()[B

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method public createFastConDataRecord()Landroid/nfc/NdefRecord;
    .locals 4

    .prologue
    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    .line 383
    const/4 v0, 0x2

    sget-object v1, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WIFI_HANDOVER_RECORD:[B

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->createWifiAPRecordPayload()[B

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method public createWlanDataRecord()Landroid/nfc/NdefRecord;
    .locals 4

    .prologue
    .line 388
    const/4 v0, 0x2

    sget-object v1, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WLAN_SHARE_RECORD:[B

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getWpaSuppConfig()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/nfc/handover/WiFiHandover;->formatByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method public disConnectCurrentAP()V
    .locals 3

    .prologue
    .line 1323
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_1

    .line 1336
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1326
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1327
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 1329
    .local v1, "networkId":I
    if-ltz v1, :cond_0

    .line 1330
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 1331
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_0
.end method

.method public disableDevice()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 265
    const-string v0, "WiFiHandover"

    const-string v1, "wifi handover disableDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->stopStaAll()V

    .line 269
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->stopApAll()V

    .line 271
    invoke-virtual {p0}, Lcom/android/nfc/handover/WiFiHandover;->disConnectCurrentAP()V

    .line 292
    invoke-direct {p0, v2}, Lcom/android/nfc/handover/WiFiHandover;->setWifiSTAEnabled(Z)V

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/nfc/handover/WiFiHandover;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public doFastConHandover(Landroid/nfc/NdefMessage;)V
    .locals 1
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    .line 425
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->doHandover(Landroid/nfc/NdefMessage;)V

    .line 426
    return-void
.end method

.method public doHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V
    .locals 2
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    .line 403
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->initianTransmitManager()V

    .line 404
    invoke-direct {p0, p2}, Lcom/android/nfc/handover/WiFiHandover;->doHandover(Landroid/nfc/NdefMessage;)V

    .line 405
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    monitor-enter v1

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverDataParser;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->stopMonitoring()V

    .line 407
    monitor-exit v1

    .line 409
    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDevice()Z
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Lcom/android/nfc/handover/Handover;->enableDevice()Z

    move-result v0

    return v0
.end method

.method public isDeviceEnabled()Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public isFastConnectHandoverSupported()Z
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 321
    const/4 v0, 0x1

    .line 324
    :goto_0
    return v0

    .line 323
    :cond_0
    const-string v0, "WiFiHandover"

    const-string v1, "mWifiManager is null, is not support wifi handover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandoverSupported()Z
    .locals 2

    .prologue
    .line 309
    sget-boolean v0, Lcom/android/nfc/handover/Constants;->supportSoftAPforHWBeam:Z

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 311
    const/4 v0, 0x1

    .line 316
    :goto_0
    return v0

    .line 315
    :cond_0
    const-string v0, "WiFiHandover"

    const-string v1, "mWifiManager is null, is not support wifi handover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized registerWifiStaReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1526
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterWIFIReceiver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1538
    :goto_0
    monitor-exit p0

    return-void

    .line 1529
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1530
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1531
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1532
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1533
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiStaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1534
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterWIFIReceiver:Z

    .line 1537
    const-string v1, "WiFiHandover"

    const-string v2, "mWifiStaReceiver is registerWifiStaReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1526
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public tryFastConHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 599
    iput-boolean v4, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    .line 600
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->getWiFiHandoverRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    new-instance v0, Landroid/nfc/NdefMessage;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v2, v4}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v1

    new-array v2, v3, [Landroid/nfc/NdefRecord;

    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->getWiFiHandoverRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/nfc/handover/WiFiHandover;->parseNdefRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 607
    :goto_0
    return-object v0

    .line 603
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->getWlanShareRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 604
    new-instance v0, Landroid/nfc/NdefMessage;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v2, v4}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v1

    new-array v2, v3, [Landroid/nfc/NdefRecord;

    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->getWlanShareRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/nfc/handover/WiFiHandover;->parseWlanShareRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    goto :goto_0

    .line 607
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tryHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .locals 6
    .param p1, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 581
    const-string v1, "WiFiHandover"

    const-string v2, "tryHandoverRequest record  is running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/nfc/handover/WiFiHandover;->registerHandoverReceiver(Landroid/content/Context;)V

    .line 583
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 584
    .local v0, "filerecord":Landroid/nfc/NdefRecord;
    invoke-virtual {p0}, Lcom/android/nfc/handover/WiFiHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/nfc/handover/HandoverDataParser;->parseConfigInfoRecord(Landroid/nfc/NdefRecord;)Lcom/android/nfc/handover/ConfigInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mConfigInfo:Lcom/android/nfc/handover/ConfigInfo;

    .line 585
    iput-boolean v4, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    .line 586
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->initianTransmitManager()V

    .line 587
    new-instance v1, Landroid/nfc/NdefMessage;

    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v3, v5}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v2

    new-array v3, v4, [Landroid/nfc/NdefRecord;

    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->getWiFiHandoverRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/nfc/handover/WiFiHandover;->parseNdefRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    return-object v1
.end method
