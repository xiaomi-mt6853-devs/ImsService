.class public Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;
.super Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
.source "MtkRcsCapabilityExchange.java"


# static fields
.field public static final DEFAULT_SLOT_ID:I = 0x0

.field public static MTK_RCS_S_REG:I = 0x0

.field public static final OPTIONS_SERVICE_HDL:I = 0x0

.field public static final PRESENCE_SERVICE_HDL:I = 0x0

.field private static final PROPERTY_MTK_RCS_S_REG:Ljava/lang/String; = "persist.vendor.mtk_rcs_single_reg_support"

.field private static final TAG:Ljava/lang/String; = "MtkRcsCapabilityExchange"

.field public static final UCE_SERVUCE_NOT_STARTED:I = -0x1


# instance fields
.field private mCallBack:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

.field private mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

.field private mContext:Landroid/content/Context;

.field private mCoreServiceWrapperBinder:Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;

.field private mImsUceManager:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

.field private mIsServiceStarted:Z

.field public mMtkResponseCallback:Landroid/telephony/ims/aidl/IPublishResponseCallback;

.field private mOptionsService:Lcom/android/ims/internal/uce/options/IOptionsService;

.field private mPresenceService:Lcom/mediatek/presence/service/api/IMtkPresenceService;

.field private mSlotId:I

.field private mSubscribeCallBack:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

.field public mSubscribeResponseCallback:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

.field private mUceListener:Lcom/android/ims/internal/uce/uceservice/IUceListener;

.field private mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

.field public mtkCapabilityEventListener:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->MTK_RCS_S_REG:I

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 104
    invoke-direct {p0}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mIsServiceStarted:Z

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mCoreServiceWrapperBinder:Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;

    .line 95
    iput-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mUceListener:Lcom/android/ims/internal/uce/uceservice/IUceListener;

    .line 96
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mSlotId:I

    .line 98
    iput-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mCallBack:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    .line 99
    iput-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mSubscribeCallBack:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    .line 152
    new-instance v1, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$1;-><init>(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;)V

    iput-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mMtkResponseCallback:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    .line 185
    new-instance v1, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$2;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$2;-><init>(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;)V

    iput-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mtkCapabilityEventListener:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 237
    new-instance v1, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$3;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$3;-><init>(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;)V

    iput-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mSubscribeResponseCallback:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    .line 330
    new-instance v1, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$4;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$4;-><init>(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;)V

    iput-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->serviceConnection:Landroid/content/ServiceConnection;

    .line 105
    iput p1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mSlotId:I

    .line 106
    iput-object p2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mContext:Landroid/content/Context;

    .line 108
    invoke-direct {p0, p3}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->saveCapbilityCallback(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V

    .line 109
    const-string v1, "persist.vendor.mtk_rcs_single_reg_support"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->MTK_RCS_S_REG:I

    .line 110
    iget-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 111
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCapEventListener :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkRcsCapabilityExchange"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MTK_RCS_S_REG  : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->MTK_RCS_S_REG:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkRcsCapabilityExchange slotId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,pm :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget v0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->MTK_RCS_S_REG:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->connectToRcsCoreService()V

    .line 117
    :cond_0
    const-string v0, "MtkRcsCapabilityExchange is loaded"

    invoke-static {v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->log(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    .line 82
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mCallBack:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;)Landroid/telephony/ims/stub/CapabilityExchangeEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    .line 82
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    .line 82
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mSubscribeCallBack:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;)Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;
    .param p1, "x1"    # Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;

    .line 82
    iput-object p1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mCoreServiceWrapperBinder:Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;

    return-object p1
.end method

.method static synthetic access$402(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;
    .param p1, "x1"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mIsServiceStarted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;)Lcom/mediatek/presence/service/api/IMtkPresenceService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    .line 82
    invoke-direct {p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->getPresenceService()Lcom/mediatek/presence/service/api/IMtkPresenceService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;Lcom/mediatek/presence/service/api/IMtkPresenceService;)Lcom/mediatek/presence/service/api/IMtkPresenceService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;
    .param p1, "x1"    # Lcom/mediatek/presence/service/api/IMtkPresenceService;

    .line 82
    iput-object p1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mPresenceService:Lcom/mediatek/presence/service/api/IMtkPresenceService;

    return-object p1
.end method

.method static synthetic access$702(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;Lcom/android/ims/internal/uce/options/IOptionsService;)Lcom/android/ims/internal/uce/options/IOptionsService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;
    .param p1, "x1"    # Lcom/android/ims/internal/uce/options/IOptionsService;

    .line 82
    iput-object p1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mOptionsService:Lcom/android/ims/internal/uce/options/IOptionsService;

    return-object p1
.end method

.method private connectToRcsCoreService()V
    .locals 5

    .line 316
    const-string v0, "MtkRcsCapabilityExchange"

    const-string v1, "connectToRcsCoreService called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mediatek.presence"

    const-string v3, "com.mediatek.presence.service.RcsCoreService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .local v1, "cmp":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mContext:Landroid/content/Context;

    const-string v3, "com.mediatek.presence.permission.PRESENCE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 321
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 322
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectToRcsCoreService intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ,serviceConnection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ,Context.BIND_AUTO_CREATE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 325
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 326
    :cond_0
    const-string v2, "connectToRcsCoreService permission not granted"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_0
    return-void
.end method

.method private getPresenceService()Lcom/mediatek/presence/service/api/IMtkPresenceService;
    .locals 3

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mCoreServiceWrapperBinder:Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;

    iget v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mSlotId:I

    invoke-interface {v0, v1}, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;->getMtkPresenceServiceBinder(I)Landroid/os/IBinder;

    move-result-object v0

    .line 299
    .local v0, "presenceServiceImpl":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/presence/service/api/IMtkPresenceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/presence/service/api/IMtkPresenceService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mPresenceService:Lcom/mediatek/presence/service/api/IMtkPresenceService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    return-object v1

    .line 301
    .end local v0    # "presenceServiceImpl":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPresenceService RemoteException e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkRcsCapabilityExchange"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v1, 0x0

    return-object v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 308
    const-string v0, "MtkRcsCapabilityExchange"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 312
    const-string v0, "MtkRcsCapabilityExchange"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method

.method private saveCapbilityCallback(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 121
    iput-object p1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 122
    const-string v0, "MtkRcsCapabilityExchange"

    const-string v1, "CapabilityExchangeEvent callback successfully saved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method


# virtual methods
.method public publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V
    .locals 5
    .param p1, "pidfXml"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    .line 127
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->setCallBack(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publishCapabilities > pidfXml : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->log(Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publishCapabilities > P ublishResponseCallback : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->log(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publishCapabilities mCoreServiceWrapperBinder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mCoreServiceWrapperBinder:Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRcsCapabilityExchange"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publishCapabilities mIsServiceStarted: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mIsServiceStarted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mIsServiceStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mCoreServiceWrapperBinder:Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;

    if-eqz v0, :cond_0

    .line 134
    iget v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mSlotId:I

    invoke-interface {v0, v2}, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;->getMtkPresenceServiceBinder(I)Landroid/os/IBinder;

    move-result-object v0

    .line 135
    .local v0, "presenceServiceImpl":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/presence/service/api/IMtkPresenceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/presence/service/api/IMtkPresenceService;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mPresenceService:Lcom/mediatek/presence/service/api/IMtkPresenceService;

    .line 136
    if-eqz v2, :cond_0

    .line 137
    const/16 v3, 0x3e9

    iget-object v4, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mMtkResponseCallback:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    invoke-interface {v2, p1, v3, v4}, Lcom/mediatek/presence/service/api/IMtkPresenceService;->publishMyCap(Ljava/lang/String;ILandroid/telephony/ims/aidl/IPublishResponseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "presenceServiceImpl":Landroid/os/IBinder;
    :cond_0
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAospPresenceServiceBinder Fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setCallBack(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    .line 146
    iput-object p1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mCallBack:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    .line 147
    const-string v0, "MtkRcsCapabilityExchange"

    const-string v1, "PublishResponseCallback Saved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public setSubscribeCallBack(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    .line 233
    iput-object p1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mSubscribeCallBack:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    .line 234
    return-void
.end method

.method public subscribeForCapabilities(Ljava/util/Collection;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V
    .locals 5
    .param p2, "cb"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .line 215
    .local p1, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->setSubscribeCallBack(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v0, "contactList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribeForCapabilities mCoreServiceWrapperBinder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mCoreServiceWrapperBinder:Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkRcsCapabilityExchange"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscribeForCapabilities mIsServiceStarted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mIsServiceStarted:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :try_start_0
    iget-boolean v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mIsServiceStarted:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mCoreServiceWrapperBinder:Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;

    if-eqz v1, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->getPresenceService()Lcom/mediatek/presence/service/api/IMtkPresenceService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 222
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscribeForCapabilities > getContactListCapAosp trigger >> contactList : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->getPresenceService()Lcom/mediatek/presence/service/api/IMtkPresenceService;

    move-result-object v1

    const/16 v3, 0x3ea

    iget-object v4, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mSubscribeResponseCallback:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    invoke-interface {v1, v0, v3, v4}, Lcom/mediatek/presence/service/api/IMtkPresenceService;->getContactListCapAosp(Ljava/util/List;ILandroid/telephony/ims/aidl/ISubscribeResponseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscribeForCapabilities >> getMtkPresenceServiceBinder Fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
