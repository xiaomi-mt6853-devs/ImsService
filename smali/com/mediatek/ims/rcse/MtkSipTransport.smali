.class public Lcom/mediatek/ims/rcse/MtkSipTransport;
.super Landroid/telephony/ims/stub/SipTransportImplBase;
.source "MtkSipTransport.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MtkSipTransport"


# instance fields
.field private cellularCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private cm:Landroid/net/ConnectivityManager;

.field private ipv4localAddress:Ljava/lang/String;

.field private ipv6localAddress:Ljava/lang/String;

.field private localAddr:Ljava/net/InetSocketAddress;

.field private mCid:Ljava/lang/String;

.field private mConfig:Lcom/mediatek/ims/rcsua/Configuration;

.field private mContext:Landroid/content/Context;

.field private mCurrentPlmn:Ljava/lang/String;

.field private mDelegateMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

.field private mDelegateStateCallBack:Landroid/telephony/ims/DelegateStateCallback;

.field private final mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/ims/rcse/MtkSipDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mLac:Ljava/lang/String;

.field private mLinkProp:Landroid/net/LinkProperties;

.field private mNetworkObj:Landroid/net/Network;

.field private mOldPlmn:Ljava/lang/String;

.field private mPcscfList:[Ljava/lang/String;

.field private mSlotId:I

.field private sipConfig:Landroid/telephony/ims/SipDelegateConfiguration;

.field private tm:Landroid/telephony/TelephonyManager;

.field private wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "context"    # Landroid/content/Context;

    .line 94
    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/SipTransportImplBase;-><init>(Ljava/util/concurrent/Executor;)V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mSlotId:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegates:Ljava/util/ArrayList;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegateStateCallBack:Landroid/telephony/ims/DelegateStateCallback;

    .line 74
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegateMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    .line 75
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mContext:Landroid/content/Context;

    .line 76
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 77
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->sipConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 78
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->localAddr:Ljava/net/InetSocketAddress;

    .line 79
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cm:Landroid/net/ConnectivityManager;

    .line 80
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->tm:Landroid/telephony/TelephonyManager;

    .line 81
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cellularCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 82
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 83
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mNetworkObj:Landroid/net/Network;

    .line 84
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mLinkProp:Landroid/net/LinkProperties;

    .line 86
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mLac:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mCid:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mOldPlmn:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mCurrentPlmn:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv6localAddress:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv4localAddress:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " MtkSipTransport executor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,mContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSipTransport"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cm:Landroid/net/ConnectivityManager;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MtkSipTransport cm: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->tm:Landroid/telephony/TelephonyManager;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MtkSipTransport tm: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->registerNetworkCallback()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcse/MtkSipTransport;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mNetworkObj:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/ims/rcse/MtkSipTransport;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;
    .param p1, "x1"    # Landroid/net/Network;

    .line 68
    iput-object p1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mNetworkObj:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcse/MtkSipTransport;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mLinkProp:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/ims/rcse/MtkSipTransport;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .line 68
    iput-object p1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mLinkProp:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/ims/rcse/MtkSipTransport;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/rcse/MtkSipTransport;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv6localAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;
    .param p1, "x1"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv6localAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;
    .param p1, "x1"    # Ljava/util/List;

    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->getIpv6Address(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/rcse/MtkSipTransport;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv4localAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;
    .param p1, "x1"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv4localAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;
    .param p1, "x1"    # Ljava/util/List;

    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->getIpv4Address(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUserPhoneId()I
    .locals 4

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "subId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 201
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 202
    .local v1, "phoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentUserPhoneId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkSipTransport"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return v1
.end method

.method private getIpv4Address(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 287
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIpv4Address addresses: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSipTransport"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 289
    .local v2, "addr":Ljava/net/InetAddress;
    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_0

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIpv4Address addr.getHostAddress() "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIpv4Address addr.getHostName() "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 294
    .end local v2    # "addr":Ljava/net/InetAddress;
    :cond_0
    goto :goto_0

    .line 295
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getIpv6Address(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 273
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIpv6Address addresses: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSipTransport"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 275
    .local v2, "addr":Ljava/net/InetAddress;
    instance-of v3, v2, Ljava/net/Inet6Address;

    if-eqz v3, :cond_0

    .line 276
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIpv6Address addr.getHostAddress() "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIpv6Address addr.getHostName() "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 282
    .end local v2    # "addr":Ljava/net/InetAddress;
    :cond_0
    goto :goto_0

    .line 283
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private registerNetworkCallback()V
    .locals 5

    .line 208
    const-string v0, "MtkSipTransport"

    const-string v1, " MtkSipTransport registerNetworkCallback inside"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 211
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 212
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 214
    .local v1, "cellularRequest":Landroid/net/NetworkRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cellularRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v3, Lcom/mediatek/ims/rcse/MtkSipTransport$1;

    invoke-direct {v3, p0}, Lcom/mediatek/ims/rcse/MtkSipTransport$1;-><init>(Lcom/mediatek/ims/rcse/MtkSipTransport;)V

    iput-object v3, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cellularCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " MtkSipTransport registerNetworkCallback inside cellularCallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cellularCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 241
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 242
    invoke-virtual {v3, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 244
    .local v2, "wifiRequest":Landroid/net/NetworkRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifiRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v3, Lcom/mediatek/ims/rcse/MtkSipTransport$2;

    invoke-direct {v3, p0}, Lcom/mediatek/ims/rcse/MtkSipTransport$2;-><init>(Lcom/mediatek/ims/rcse/MtkSipTransport;)V

    iput-object v3, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " MtkSipTransport registerNetworkCallback inside wifiCallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cellularCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 268
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 270
    return-void
.end method


# virtual methods
.method public createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V
    .locals 18
    .param p1, "subscriptionId"    # I
    .param p2, "request"    # Landroid/telephony/ims/DelegateRequest;
    .param p3, "dc"    # Landroid/telephony/ims/DelegateStateCallback;
    .param p4, "mc"    # Landroid/telephony/ims/DelegateMessageCallback;

    .line 110
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2 MtkSipTransport called createSipDelegate subscriptionId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MtkSipTransport"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MtkSipTransport called createSipDelegate request: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MtkSipTransport called createSipDelegate dc: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MtkSipTransport called createSipDelegate mc: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-object v3, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegateStateCallBack:Landroid/telephony/ims/DelegateStateCallback;

    .line 115
    iput-object v4, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegateMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    .line 116
    new-instance v5, Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/mediatek/ims/rcse/MtkSipDelegate;-><init>(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V

    .line 117
    .local v5, "d":Lcom/mediatek/ims/rcse/MtkSipDelegate;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createSipDelegate d: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createSipDelegate request.toString: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/DelegateRequest;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createSipDelegate request getFeature: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createSipDelegate UaServiceManager.getInstance().getService() : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/ims/rcse/UaServiceManager;->getService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/ims/rcse/UaServiceManager;->getService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 122
    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/ims/rcse/UaServiceManager;->readConfiguraion()Lcom/mediatek/ims/rcsua/Configuration;

    move-result-object v7

    iput-object v7, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createSipDelegate mConfig : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    invoke-virtual {v10}, Lcom/mediatek/ims/rcsua/Configuration;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    invoke-virtual {v9}, Lcom/mediatek/ims/rcsua/Configuration;->getPAssociatedUri()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v7, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    invoke-virtual {v7}, Lcom/mediatek/ims/rcsua/Configuration;->getPLastAccessNetworkInfo()Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, "pLast":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createSipDelegate pLast : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 128
    iget-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    invoke-virtual {v9}, Lcom/mediatek/ims/rcsua/Configuration;->getPAccessNetworkInfo()Ljava/lang/String;

    move-result-object v7

    .line 130
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createSipDelegate ipv6localAddr ess : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv6localAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createSipDelegate ipv4localAddress : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv4localAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv6localAddress:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 133
    new-instance v9, Ljava/net/InetSocketAddress;

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv6localAddress:Ljava/lang/String;

    iget-object v11, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    invoke-virtual {v11}, Lcom/mediatek/ims/rcsua/Configuration;->getLocalPort()I

    move-result v11

    invoke-direct {v9, v10, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->localAddr:Ljava/net/InetSocketAddress;

    goto :goto_0

    .line 135
    :cond_1
    new-instance v9, Ljava/net/InetSocketAddress;

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv4localAddress:Ljava/lang/String;

    iget-object v11, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    invoke-virtual {v11}, Lcom/mediatek/ims/rcsua/Configuration;->getLocalPort()I

    move-result v11

    invoke-direct {v9, v10, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->localAddr:Ljava/net/InetSocketAddress;

    .line 137
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createSipDelegate localAddr : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->localAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v9, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    invoke-virtual {v10}, Lcom/mediatek/ims/rcsua/Configuration;->getSecurityVerify()Ljava/lang/String;

    move-result-object v17

    move-object v10, v9

    invoke-direct/range {v10 .. v17}, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;-><init>(IIIIIILjava/lang/String;)V

    .line 139
    .local v9, "ipSecConfig":Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;
    new-instance v15, Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    const-wide/16 v11, 0x1

    const/4 v13, 0x1

    iget-object v14, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->localAddr:Ljava/net/InetSocketAddress;

    move-object v10, v15

    move-object/from16 v16, v14

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;-><init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 140
    invoke-virtual {v10}, Lcom/mediatek/ims/rcsua/Configuration;->getPIdentifier()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPublicUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v1

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 141
    invoke-virtual {v10}, Lcom/mediatek/ims/rcsua/Configuration;->getHomeDomain()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setHomeDomain(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v1

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 142
    invoke-virtual {v10}, Lcom/mediatek/ims/rcsua/Configuration;->getPAssociatedUriStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAssociatedUriHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v1

    .line 143
    invoke-virtual {v1, v9}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setIpSecConfiguration(Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v1

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 144
    invoke-virtual {v10}, Lcom/mediatek/ims/rcsua/Configuration;->getServiceRouteStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipServiceRouteHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v1

    .line 145
    const-string v10, "user"

    invoke-virtual {v1, v10}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipContactUserParameter(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v1

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 146
    invoke-virtual {v10}, Lcom/mediatek/ims/rcsua/Configuration;->getImei()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setImei(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v1

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 147
    invoke-virtual {v10}, Lcom/mediatek/ims/rcsua/Configuration;->getPAccessNetworkInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v1

    .line 148
    invoke-virtual {v1, v7}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPlaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v1

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 149
    invoke-virtual {v10}, Lcom/mediatek/ims/rcsua/Configuration;->getUserAgent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipUserAgentHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v1

    const/16 v10, 0x5dc

    .line 150
    invoke-virtual {v1, v10}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setMaxUdpPayloadSizeBytes(I)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->build()Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->sipConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createSipDelegate, sipConfig: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->sipConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v7    # "pLast":Ljava/lang/String;
    .end local v9    # "ipSecConfig":Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;
    :cond_2
    nop

    .line 155
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 156
    .local v1, "deniedTags":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    const-string v7, ""

    .line 157
    .local v7, "featureTagStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 158
    .local v10, "featureTag":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createSipDelegate featureTag: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    move-object v7, v10

    .line 160
    new-instance v11, Landroid/telephony/ims/FeatureTagState;

    const/4 v12, 0x2

    const-string v13, ""

    invoke-direct {v11, v13, v12}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v10    # "featureTag":Ljava/lang/String;
    goto :goto_1

    .line 162
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createSipDelegate deniedTags: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createSipDelegate featureTagStr: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v9, "createSipDelegate mDelegateStateCallBack.onCreated called: "

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegateStateCallBack:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v9, v5, v1}, Landroid/telephony/ims/DelegateStateCallback;->onCreated(Landroid/telephony/ims/stub/SipDelegate;Ljava/util/Set;)V

    .line 166
    const-string v9, "createSipDelegate mDelegateStateCallBack.onConfigurationChanged called: "

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegateStateCallBack:Landroid/telephony/ims/DelegateStateCallback;

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->sipConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-interface {v9, v10}, Landroid/telephony/ims/DelegateStateCallback;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V

    .line 168
    new-instance v9, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v9}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 169
    invoke-virtual {v9, v7}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    move-result-object v9

    .line 170
    invoke-virtual {v9}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v9

    .line 171
    .local v9, "regState":Landroid/telephony/ims/DelegateRegistrationState;
    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegateStateCallBack:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v10, v9}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 173
    .end local v1    # "deniedTags":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    .end local v7    # "featureTagStr":Ljava/lang/String;
    .end local v9    # "regState":Landroid/telephony/ims/DelegateRegistrationState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v1, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method public destroySipDelegate(Landroid/telephony/ims/stub/SipDelegate;I)V
    .locals 3
    .param p1, "delegate"    # Landroid/telephony/ims/stub/SipDelegate;
    .param p2, "reason"    # I

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipTransport called destroySipDelegate delegate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSipTransport"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    instance-of v0, p1, Lcom/mediatek/ims/rcse/MtkSipDelegate;

    if-eqz v0, :cond_1

    .line 181
    const-string v0, "SipTransport called destroySipDelegate delegate instanceof MtkSipDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySipDelegate mDelegateStateCallBack: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegateStateCallBack:Landroid/telephony/ims/DelegateStateCallback;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegateStateCallBack:Landroid/telephony/ims/DelegateStateCallback;

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0, p2}, Landroid/telephony/ims/DelegateStateCallback;->onDestroyed(I)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 190
    :cond_1
    return-void
.end method

.method public getDelegates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/rcse/MtkSipDelegate;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegates:Ljava/util/ArrayList;

    return-object v0
.end method
