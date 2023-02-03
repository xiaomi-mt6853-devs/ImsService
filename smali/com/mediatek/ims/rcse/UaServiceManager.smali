.class public Lcom/mediatek/ims/rcse/UaServiceManager;
.super Ljava/lang/Object;
.source "UaServiceManager.java"


# static fields
.field private static INSTANCE:Lcom/mediatek/ims/rcse/UaServiceManager;


# instance fields
.field private acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

.field private capability:Lcom/mediatek/ims/rcsua/Capability;

.field private channel:Lcom/mediatek/ims/rcsua/SipChannel;

.field private client:Lcom/mediatek/ims/rcsua/Client;

.field private imsCallback:Lcom/mediatek/ims/rcsua/ImsEventCallback;

.field mContext:Landroid/content/Context;

.field private serviceCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

.field private serviceStarted:Z

.field private uaService:Lcom/mediatek/ims/rcsua/RcsUaService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 272
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ims/rcse/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcse/UaServiceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->mContext:Landroid/content/Context;

    .line 235
    new-instance v1, Lcom/mediatek/ims/rcse/UaServiceManager$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcse/UaServiceManager$1;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager;)V

    iput-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->serviceCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 273
    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 274
    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->client:Lcom/mediatek/ims/rcsua/Client;

    .line 275
    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->imsCallback:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 276
    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 277
    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->channel:Lcom/mediatek/ims/rcsua/SipChannel;

    .line 278
    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->capability:Lcom/mediatek/ims/rcsua/Capability;

    .line 270
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/ImsEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 46
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->imsCallback:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcsua/ImsEventCallback;)Lcom/mediatek/ims/rcsua/ImsEventCallback;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 46
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->imsCallback:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/Client;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 46
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->client:Lcom/mediatek/ims/rcsua/Client;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcsua/Client;)Lcom/mediatek/ims/rcsua/Client;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/Client;

    .line 46
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->client:Lcom/mediatek/ims/rcsua/Client;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 46
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcsua/RcsUaService;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 46
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/AcsEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 46
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcsua/AcsEventCallback;)Lcom/mediatek/ims/rcsua/AcsEventCallback;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 46
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    return-object p1
.end method

.method static synthetic access$402(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcsua/SipChannel;)Lcom/mediatek/ims/rcsua/SipChannel;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/SipChannel;

    .line 46
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->channel:Lcom/mediatek/ims/rcsua/SipChannel;

    return-object p1
.end method

.method static synthetic access$502(Lcom/mediatek/ims/rcse/UaServiceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;
    .param p1, "x1"    # Z

    .line 46
    iput-boolean p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->serviceStarted:Z

    return p1
.end method

.method public static getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;
    .locals 3

    .line 49
    const-string v0, "UaServiceManagerMTK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/ims/rcse/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v0, Lcom/mediatek/ims/rcse/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcse/UaServiceManager;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/mediatek/ims/rcse/UaServiceManager;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcse/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcse/UaServiceManager;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-direct {v1}, Lcom/mediatek/ims/rcse/UaServiceManager;-><init>()V

    sput-object v1, Lcom/mediatek/ims/rcse/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :cond_1
    :goto_0
    const-string v0, "UaServiceManagerMTK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance return:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/ims/rcse/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v0, Lcom/mediatek/ims/rcse/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcse/UaServiceManager;

    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UaServiceManagerMTK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->activate()V

    .line 173
    :cond_0
    return-void
.end method

.method public closeChannel(Lcom/mediatek/ims/rcsua/SipChannel;)V
    .locals 2
    .param p1, "channel"    # Lcom/mediatek/ims/rcsua/SipChannel;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeChannel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UaServiceManagerMTK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p1}, Lcom/mediatek/ims/rcsua/SipChannel;->close()V

    .line 203
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->channel:Lcom/mediatek/ims/rcsua/SipChannel;

    if-ne p1, v0, :cond_0

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->channel:Lcom/mediatek/ims/rcsua/SipChannel;

    .line 205
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deactivate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UaServiceManagerMTK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->deactivate()V

    .line 179
    :cond_0
    return-void
.end method

.method public getActiveClient()Lcom/mediatek/ims/rcsua/Client;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->client:Lcom/mediatek/ims/rcsua/Client;

    return-object v0
.end method

.method public getService()Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setService instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UaServiceManagerMTK"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0
.end method

.method public getSipChannel()Lcom/mediatek/ims/rcsua/SipChannel;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->channel:Lcom/mediatek/ims/rcsua/SipChannel;

    return-object v0
.end method

.method public imsRegistered()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->client:Lcom/mediatek/ims/rcsua/Client;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/Client;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public openChannel(Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;)Lcom/mediatek/ims/rcsua/SipChannel;
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openChannel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->client:Lcom/mediatek/ims/rcsua/Client;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UaServiceManagerMTK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->client:Lcom/mediatek/ims/rcsua/Client;

    if-eqz v0, :cond_0

    .line 192
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/Client;->openSipChannel(Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;)Lcom/mediatek/ims/rcsua/SipChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->channel:Lcom/mediatek/ims/rcsua/SipChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 197
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->channel:Lcom/mediatek/ims/rcsua/SipChannel;

    return-object v0
.end method

.method public readConfiguraion()Lcom/mediatek/ims/rcsua/Configuration;
    .locals 1

    .line 229
    invoke-virtual {p0}, Lcom/mediatek/ims/rcse/UaServiceManager;->imsRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->client:Lcom/mediatek/ims/rcsua/Client;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/Client;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->readImsConfiguration()Lcom/mediatek/ims/rcsua/Configuration;

    move-result-object v0

    return-object v0

    .line 232
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAcsCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerAcsCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UaServiceManagerMTK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    if-eqz v0, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->registerAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V

    goto :goto_0

    .line 153
    :cond_1
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 155
    :goto_0
    return-void
.end method

.method public registerClient(Lcom/mediatek/ims/rcsua/ImsEventCallback;)Lcom/mediatek/ims/rcsua/Client;
    .locals 3
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->client:Lcom/mediatek/ims/rcsua/Client;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UaServiceManagerMTK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->client:Lcom/mediatek/ims/rcsua/Client;

    if-eqz v0, :cond_0

    .line 120
    return-object v0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerClient uaService.isConnected()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v2}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->registerClient(Lcom/mediatek/ims/rcsua/ImsEventCallback;)Lcom/mediatek/ims/rcsua/Client;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->client:Lcom/mediatek/ims/rcsua/Client;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerClient client: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->client:Lcom/mediatek/ims/rcsua/Client;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->imsCallback:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerClient return client: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->client:Lcom/mediatek/ims/rcsua/Client;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->client:Lcom/mediatek/ims/rcsua/Client;

    return-object v0
.end method

.method public serviceConnected()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    const-string v0, "UaServiceManagerMTK"

    const-string v1, "startService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-boolean v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->serviceStarted:Z

    if-eqz v1, :cond_0

    .line 65
    return-void

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    const-string v1, "persist.vendor.operator.optr"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "optr":Ljava/lang/String;
    const-string v2, "op07"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 70
    const-string v2, "op08"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startService optr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v0, "options":Landroid/os/Bundle;
    const-string v2, "OPTION_ROI_SUPPORT"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->serviceCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    invoke-static {p1, v2, v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;Lcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 74
    iput-boolean v3, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->serviceStarted:Z

    .line 79
    .end local v0    # "options":Landroid/os/Bundle;
    .end local v1    # "optr":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void
.end method

.method public startService(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startService, phone id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UaServiceManagerMTK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-boolean v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->serviceStarted:Z

    if-eqz v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const-string v0, "persist.vendor.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "optr":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v2, "options":Landroid/os/Bundle;
    const-string v3, "OPTION_ROI_SUPPORT"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    iget-object v3, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->serviceCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    invoke-static {p1, p2, v3, v2}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startService, uaService = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-boolean v4, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->serviceStarted:Z

    .line 99
    .end local v0    # "optr":Ljava/lang/String;
    .end local v2    # "options":Landroid/os/Bundle;
    goto :goto_0

    .line 100
    :cond_1
    const-string v0, "RcsUaService is not started"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void
.end method

.method public stopService()V
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopService:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UaServiceManagerMTK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->client:Lcom/mediatek/ims/rcsua/Client;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 107
    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->unregisterClient(Lcom/mediatek/ims/rcsua/Client;)V

    .line 108
    iput-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->client:Lcom/mediatek/ims/rcsua/Client;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->stopService()V

    .line 112
    iput-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 114
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->serviceStarted:Z

    .line 115
    return-void
.end method

.method public triggerReregistration()V
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerReregistration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UaServiceManagerMTK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0}, Lcom/mediatek/ims/rcse/UaServiceManager;->serviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->triggerReregistration()V

    .line 186
    :cond_0
    return-void
.end method

.method public unregisterAcsCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterAcsCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UaServiceManagerMTK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    if-nez p1, :cond_0

    .line 160
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->unregisterAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V

    .line 165
    :cond_1
    return-void
.end method

.method public unregisterClient(Lcom/mediatek/ims/rcsua/Client;)V
    .locals 2
    .param p1, "client"    # Lcom/mediatek/ims/rcsua/Client;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UaServiceManagerMTK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->client:Lcom/mediatek/ims/rcsua/Client;

    if-ne p1, v0, :cond_0

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->client:Lcom/mediatek/ims/rcsua/Client;

    .line 136
    if-nez p1, :cond_0

    .line 137
    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->imsCallback:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->unregisterClient(Lcom/mediatek/ims/rcsua/Client;)V

    .line 143
    :cond_1
    return-void
.end method
