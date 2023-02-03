.class public Lcom/mediatek/ims/rcsua/RcsUaService;
.super Ljava/lang/Object;
.source "RcsUaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;,
        Lcom/mediatek/ims/rcsua/RcsUaService$Callback;,
        Lcom/mediatek/ims/rcsua/RcsUaService$AcsRequestReason;,
        Lcom/mediatek/ims/rcsua/RcsUaService$RegistrationMode;,
        Lcom/mediatek/ims/rcsua/RcsUaService$ImsRadioTech;,
        Lcom/mediatek/ims/rcsua/RcsUaService$RegistrationState;
    }
.end annotation


# static fields
.field public static final ACTION_RCSUA_SERVICE_DOWN:Ljava/lang/String; = "com.mediatek.ims.rcsua.SERVICE_DOWN"

.field public static final ACTION_RCSUA_SERVICE_UP:Ljava/lang/String; = "com.mediatek.ims.rcsua.SERVICE_UP"

.field private static final EXTRA_OPTIONS:Ljava/lang/String; = "service_options"

.field private static final EXTRA_PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static volatile INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService; = null

.field public static final OPTION_DEREG_SUSPEND:Ljava/lang/String; = "OPTION_DEREG_SUSPEND"

.field public static final OPTION_ROI_SUPPORT:Ljava/lang/String; = "OPTION_ROI_SUPPORT"

.field public static final REASON_DEFAULT_SMS_UNKNOWN:I = 0x0

.field public static final REASON_FT_AUTHENTICATE_FAILURE:I = 0x3

.field public static final REASON_RCS_DEFAULT_SMS:I = 0x1

.field public static final REASON_RCS_NOT_DEFAULT_SMS:I = 0x2

.field public static final REG_MODE_IMS:I = 0x1

.field public static final REG_MODE_INTERNET:I = 0x2

.field public static final REG_RADIO_3GPP:I = 0x1

.field public static final REG_RADIO_IEEE802:I = 0x2

.field public static final REG_RADIO_NONE:I = 0x0

.field public static final REG_STATE_DEREGISTERING:I = 0x3

.field public static final REG_STATE_NOT_REGISTERED:I = 0x0

.field public static final REG_STATE_REGISTERED:I = 0x2

.field public static final REG_STATE_REGISTERING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[RcsUaService][API]"


# instance fields
.field private acsCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mediatek/ims/rcsua/AcsEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

.field private acsSupported:Z

.field private activated:Z

.field private callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

.field private callerContext:Landroid/content/Context;

.field private capabilities:Lcom/mediatek/ims/rcsua/Capability;

.field private clientCount:I

.field private clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

.field private clients:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mediatek/ims/rcsua/Client;",
            ">;"
        }
    .end annotation
.end field

.field private deathRecipient:Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;

.field private final imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

.field private lock:Ljava/lang/Object;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1103
    new-instance v0, Lcom/mediatek/ims/rcsua/RcsUaService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcsua/RcsUaService$3;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    .line 1181
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    .line 1187
    new-instance v1, Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/RcsUaService$1;)V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->deathRecipient:Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;

    .line 1192
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    .line 1193
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    .line 1194
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    .line 1021
    new-instance v1, Lcom/mediatek/ims/rcsua/RcsUaService$2;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/RcsUaService$2;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    .line 1056
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    .line 1057
    iput-object p3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callerCallback value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[RcsUaService][API]"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callerContext value "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    const-string v2, "persist.vendor.service.rcs"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/rcsua/RcsUaService;->getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    .line 1062
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    .line 1064
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.rcsua.BIND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1068
    new-instance v1, Landroid/os/Bundle;

    if-nez p4, :cond_1

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    invoke-direct {v1, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1069
    .local v1, "bundle":Landroid/os/Bundle;
    :goto_0
    iget-boolean v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    const-string v4, "OPTION_ACS_SUPPORT"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1070
    const-string v3, "service_options"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1072
    const-string v3, "com.mediatek.ims.rcsua.service"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1075
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1076
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 65
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 65
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200()Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1

    .line 65
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/rcsua/RcsUaService;)Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 65
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->deathRecipient:Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/rcsua/RcsUaService;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 65
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/service/IRcsUaService;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 65
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/ims/rcsua/RcsUaService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 65
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 65
    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->notifyServiceUp()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 65
    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->notifyServiceDown()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 65
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    .line 65
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    return-object p1
.end method

.method public static getInstance()Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1

    .line 322
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->getInstance(I)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 2
    .param p0, "phoneId"    # I

    .line 332
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "startService() must be called before getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 1158
    move-object v0, p2

    .line 1160
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1162
    .local v1, "cl":Ljava/lang/ClassLoader;
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1163
    .local v2, "systemProperties":Ljava/lang/Class;
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 1164
    .local v4, "paramTypes":[Ljava/lang/Class;
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1165
    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 1166
    const-string v5, "get"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1167
    .local v5, "get":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    .line 1168
    .local v3, "params":[Ljava/lang/Object;
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v3, v6

    .line 1169
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v3, v7

    .line 1171
    invoke-virtual {v5, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 1174
    .end local v2    # "systemProperties":Ljava/lang/Class;
    .end local v3    # "params":[Ljava/lang/Object;
    .end local v4    # "paramTypes":[Ljava/lang/Class;
    .end local v5    # "get":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 1172
    :catch_0
    move-exception v2

    .line 1176
    :goto_0
    return-object v0
.end method

.method public static isAcsAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 990
    const/4 v0, 0x0

    .line 991
    .local v0, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 992
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[RcsUaService][API]"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageManager pm  value "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v2, 0x0

    :try_start_0
    const-string v4, "com.mediatek.rcs.provisioning"

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v0, v4

    .line 997
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    goto :goto_0

    .line 998
    :catch_0
    move-exception v4

    .line 1001
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAcsAvailable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    move v2, v5

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    return v5
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 981
    const-string v0, "persist.vendor.mtk_rcs_ua_support"

    .line 983
    .local v0, "name":Ljava/lang/String;
    const-string v1, "persist.vendor.mtk_rcs_ua_support"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lcom/mediatek/ims/rcsua/RcsUaService;->getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 984
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[RcsUaService][API]"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private notifyServiceDown()V
    .locals 2

    .line 1092
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    if-eqz v0, :cond_0

    .line 1093
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/RcsUaService$Callback;->serviceDisconnected(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    .line 1101
    :cond_0
    return-void
.end method

.method private notifyServiceUp()V
    .locals 2

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyServiceUp to callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[RcsUaService][API]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    if-eqz v0, :cond_0

    .line 1081
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/RcsUaService$Callback;->serviceConnected(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    .line 1089
    :cond_0
    return-void
.end method

.method public static startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 248
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method

.method public static startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 275
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService, current instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-nez v0, :cond_1

    .line 277
    const-class v0, Lcom/mediatek/ims/rcsua/RcsUaService;

    monitor-enter v0

    .line 278
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-nez v1, :cond_0

    .line 279
    new-instance v1, Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mediatek/ims/rcsua/RcsUaService;-><init>(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)V

    sput-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 281
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 284
    :cond_1
    :goto_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0
.end method

.method public static startService(Landroid/content/Context;Lcom/mediatek/ims/rcsua/RcsUaService$Callback;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 235
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method

.method public static startService(Landroid/content/Context;Lcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 261
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .line 344
    const-string v0, "[RcsUaService][API]"

    const-string v1, "activate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    goto :goto_0

    .line 349
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->activate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 353
    :goto_0
    return-void
.end method

.method public addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "feature"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 447
    const-string v0, "[RcsUaService][API]"

    const-string v1, "addCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 457
    :goto_0
    return-void

    .line 449
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearAcsConfiguration()Z
    .locals 2

    .line 962
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 965
    const/4 v0, 0x0

    .line 967
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->clearAcsConfiguration()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 969
    goto :goto_0

    .line 968
    :catch_0
    move-exception v1

    .line 970
    :goto_0
    return v0

    .line 963
    .end local v0    # "result":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deactivate()V
    .locals 2

    .line 361
    const-string v0, "[RcsUaService][API]"

    const-string v1, "deactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    goto :goto_0

    .line 366
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->deactivate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 370
    :goto_0
    return-void
.end method

.method public getAcsConfigInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "configItem"    # Ljava/lang/String;

    .line 790
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 792
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    const/4 v0, 0x0

    .line 798
    .local v0, "value":I
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 800
    goto :goto_0

    .line 799
    :catch_0
    move-exception v1

    .line 802
    :goto_0
    return v0

    .line 793
    .end local v0    # "value":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configItem"    # Ljava/lang/String;

    .line 812
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 814
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    const-string v0, ""

    .line 820
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 822
    goto :goto_0

    .line 821
    :catch_0
    move-exception v1

    .line 824
    :goto_0
    return-object v0

    .line 815
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;
    .locals 2

    .line 747
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 749
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    const/4 v0, 0x0

    .line 755
    .local v0, "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 757
    goto :goto_0

    .line 756
    :catch_0
    move-exception v1

    .line 758
    :goto_0
    return-object v0

    .line 750
    .end local v0    # "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcsSwitchState()Z
    .locals 2

    .line 921
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 924
    const/4 v0, 0x0

    .line 926
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsSwitchState()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 928
    goto :goto_0

    .line 927
    :catch_0
    move-exception v1

    .line 929
    :goto_0
    return v0

    .line 922
    .end local v0    # "state":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActiveClients()[Lcom/mediatek/ims/rcsua/Client;
    .locals 2

    .line 646
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/ims/rcsua/Client;

    return-object v0

    .line 647
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAospAcsInfo()Ljava/lang/String;
    .locals 3

    .line 767
    const-string v0, ""

    .line 768
    .local v0, "info":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v1, :cond_1

    .line 770
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    const/4 v1, 0x0

    .line 776
    .local v1, "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v2

    move-object v1, v2

    .line 777
    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/AcsConfiguration;->readXmlData()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 779
    goto :goto_0

    .line 778
    :catch_0
    move-exception v2

    .line 780
    :goto_0
    return-object v0

    .line 771
    .end local v1    # "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RCS UA service disconnected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 769
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "ACS not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCapabilities()Lcom/mediatek/ims/rcsua/Capability;
    .locals 2

    .line 587
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    const/4 v0, 0x0

    .line 593
    .local v0, "capability":Lcom/mediatek/ims/rcsua/Capability;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 596
    goto :goto_0

    .line 594
    :catch_0
    move-exception v1

    .line 598
    :goto_0
    return-object v0

    .line 588
    .end local v0    # "capability":Lcom/mediatek/ims/rcsua/Capability;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    return-object v0
.end method

.method public getOptions()Landroid/os/Bundle;
    .locals 2

    .line 659
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    const/4 v0, 0x0

    .line 665
    .local v0, "options":Landroid/os/Bundle;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getOptions()Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 667
    goto :goto_0

    .line 666
    :catch_0
    move-exception v1

    .line 669
    :goto_0
    return-object v0

    .line 660
    .end local v0    # "options":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAcsConnected()Z
    .locals 2

    .line 833
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 835
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    const/4 v0, 0x0

    .line 841
    .local v0, "connected":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->isAcsConnected()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 843
    goto :goto_0

    .line 842
    :catch_0
    move-exception v1

    .line 845
    :goto_0
    return v0

    .line 836
    .end local v0    # "connected":Z
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isActivated()Z
    .locals 2

    .line 608
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    return v0

    .line 612
    :cond_0
    const/4 v0, 0x1

    .line 614
    .local v0, "activated":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->isActivated()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 617
    goto :goto_0

    .line 615
    :catch_0
    move-exception v1

    .line 619
    :goto_0
    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 678
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_2

    .line 680
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 685
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    new-instance v1, Lcom/mediatek/ims/rcsua/RcsUaService$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/RcsUaService$1;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v2, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->registerAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 713
    goto :goto_0

    .line 712
    :catch_0
    move-exception v1

    .line 715
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 716
    monitor-exit v0

    .line 717
    return-void

    .line 716
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 681
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerClient(Lcom/mediatek/ims/rcsua/ImsEventCallback;)Lcom/mediatek/ims/rcsua/Client;
    .locals 4
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 527
    const/4 v0, 0x0

    .line 529
    .local v0, "newClient":Lcom/mediatek/ims/rcsua/Client;
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_1

    .line 534
    :try_start_0
    const-string v1, "[RcsUaService][API]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerClient:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :try_start_1
    iget v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    if-nez v2, :cond_0

    .line 538
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    invoke-interface {v2, v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->registerClient(Lcom/mediatek/ims/rcsua/service/IImsEventCallback;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 541
    :cond_0
    new-instance v2, Lcom/mediatek/ims/rcsua/Client;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    invoke-direct {v2, p0, v3}, Lcom/mediatek/ims/rcsua/Client;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V

    move-object v0, v2

    .line 542
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/Client;->registerImsEventCallback(Lcom/mediatek/ims/rcsua/ImsEventCallback;)V

    .line 543
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 544
    monitor-exit v1

    .line 547
    goto :goto_0

    .line 544
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "newClient":Lcom/mediatek/ims/rcsua/Client;
    .end local p0    # "this":Lcom/mediatek/ims/rcsua/RcsUaService;
    .end local p1    # "callback":Lcom/mediatek/ims/rcsua/ImsEventCallback;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 545
    .restart local v0    # "newClient":Lcom/mediatek/ims/rcsua/Client;
    .restart local p0    # "this":Lcom/mediatek/ims/rcsua/RcsUaService;
    .restart local p1    # "callback":Lcom/mediatek/ims/rcsua/ImsEventCallback;
    :catch_0
    move-exception v1

    .line 549
    :goto_0
    return-object v0

    .line 530
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RCS UA service disconnected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "feature"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 467
    const-string v0, "[RcsUaService][API]"

    const-string v1, "removeCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 477
    :goto_0
    return-void

    .line 469
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAcsProvisioningAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 943
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 946
    const/4 v0, 0x0

    .line 948
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsProvisioningAddress(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 950
    goto :goto_0

    .line 949
    :catch_0
    move-exception v1

    .line 951
    :goto_0
    return v0

    .line 944
    .end local v0    # "result":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAcsSwitchState(Z)Z
    .locals 2
    .param p1, "state"    # Z

    .line 879
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 882
    const/4 v0, 0x0

    .line 884
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsSwitchState(Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 886
    goto :goto_0

    .line 885
    :catch_0
    move-exception v1

    .line 887
    :goto_0
    return v0

    .line 880
    .end local v0    # "result":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rcsVersion"    # Ljava/lang/String;
    .param p2, "rcsProfile"    # Ljava/lang/String;
    .param p3, "clientVendor"    # Ljava/lang/String;
    .param p4, "clientVersion"    # Ljava/lang/String;

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAcsonfiguration rcsVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,rcsProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,clientVendor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,clientVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[RcsUaService][API]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAcsonfiguration !acsSupported: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 906
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceIntf value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    goto :goto_0

    .line 908
    :catch_0
    move-exception v0

    .line 910
    :goto_0
    return-void

    .line 903
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOptions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .line 628
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setOptions(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    goto :goto_0

    .line 634
    :catch_0
    move-exception v0

    .line 637
    :goto_0
    return-void

    .line 629
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopService()V
    .locals 5

    .line 292
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopService, current instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-class v0, Lcom/mediatek/ims/rcsua/RcsUaService;

    monitor-enter v0

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 295
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 297
    :try_start_1
    invoke-interface {v1, v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    .line 301
    :goto_0
    :try_start_2
    iput-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 304
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 306
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 307
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->deathRecipient:Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 308
    iput-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 310
    :cond_1
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v1, :cond_2

    .line 311
    sput-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 313
    :cond_2
    monitor-exit v0

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public triggerAcsRequest(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 855
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 857
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerAcsRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    goto :goto_0

    .line 863
    :catch_0
    move-exception v0

    .line 865
    :goto_0
    return-void

    .line 858
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerForceReregistration()V
    .locals 2

    .line 394
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerForceReregistration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerForceReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 404
    :goto_0
    return-void

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerReregistration()V
    .locals 2

    .line 377
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerReregistraion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 387
    :goto_0
    return-void

    .line 379
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "features"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 411
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerReregistraion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 421
    :goto_0
    return-void

    .line 413
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerRestoration()V
    .locals 2

    .line 428
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerRestoration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerRestoration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 438
    :goto_0
    return-void

    .line 430
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 726
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_2

    .line 728
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 730
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 732
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 733
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v1, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V

    .line 734
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    goto :goto_0

    .line 735
    :catch_0
    move-exception v1

    .line 738
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 739
    return-void

    .line 738
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 727
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterClient(Lcom/mediatek/ims/rcsua/Client;)V
    .locals 3
    .param p1, "client"    # Lcom/mediatek/ims/rcsua/Client;

    .line 560
    const-string v0, "[RcsUaService][API]"

    const-string v1, "unregisterClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    const-string v0, "[RcsUaService][API]"

    const-string v1, "unregisterClient: client doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_0
    iget v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 569
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_1

    .line 570
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    invoke-interface {v1, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterClient(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    :cond_1
    goto :goto_0

    .line 571
    :catch_0
    move-exception v1

    .line 574
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 576
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 577
    monitor-exit v0

    .line 578
    return-void

    .line 577
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "features"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 487
    const-string v0, "[RcsUaService][API]"

    const-string v1, "updateCapabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 497
    :goto_0
    return-void

    .line 489
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateCapabilities(Ljava/lang/String;)V
    .locals 2
    .param p1, "featuresText"    # Ljava/lang/String;

    .line 507
    const-string v0, "[RcsUaService][API]"

    const-string v1, "updateCapabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    new-instance v1, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v1, p1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 517
    :goto_0
    return-void

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
