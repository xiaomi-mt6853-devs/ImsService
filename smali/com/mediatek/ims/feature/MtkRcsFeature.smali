.class public Lcom/mediatek/ims/feature/MtkRcsFeature;
.super Landroid/telephony/ims/feature/RcsFeature;
.source "MtkRcsFeature.java"


# static fields
.field private static final DELAY_IMS_SERVICE_IMPL_QUERY_MS:I = 0x1388

.field private static final MAXMUIM_IMS_SERVICE_IMPL_RETRY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MtkRcsFeature"


# instance fields
.field private mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

.field private mCapExchangeImpl:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

.field private mContext:Landroid/content/Context;

.field private mImsServiceImpl:Lcom/mediatek/ims/ImsService;

.field private final mImsServiceRcsCallback:Lcom/mediatek/ims/ImsService$IMtkRcsFeatureCallback;

.field private final mRcsCapabilitiesIWan:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

.field private final mRcsCapabilitiesLte:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

.field private mSlotId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 137
    invoke-direct {p0}, Landroid/telephony/ims/feature/RcsFeature;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 121
    new-instance v1, Lcom/mediatek/ims/feature/MtkRcsFeature$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/feature/MtkRcsFeature$1;-><init>(Lcom/mediatek/ims/feature/MtkRcsFeature;)V

    iput-object v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceRcsCallback:Lcom/mediatek/ims/ImsService$IMtkRcsFeatureCallback;

    .line 138
    iput-object p2, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mContext:Landroid/content/Context;

    .line 139
    iput p1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mSlotId:I

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "retry":I
    new-instance v2, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    iput-object v2, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mRcsCapabilitiesLte:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 142
    new-instance v2, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-direct {v2, v3}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    iput-object v2, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mRcsCapabilitiesIWan:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 144
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    const-string v4, "MtkRcsFeature"

    if-nez v2, :cond_1

    const/4 v5, 0x3

    if-ge v1, v5, :cond_1

    .line 145
    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 147
    if-nez v2, :cond_0

    .line 148
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImsService is not initialized yet. Query later - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-wide/16 v5, 0x1388

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, "er":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to get ImsService "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v2    # "er":Ljava/lang/Exception;
    :cond_0
    :goto_1
    goto :goto_0

    .line 156
    :cond_1
    if-eqz v2, :cond_2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize mContext "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " slotId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceRcsCallback:Lcom/mediatek/ims/ImsService$IMtkRcsFeatureCallback;

    invoke-virtual {v0, p1, v2}, Lcom/mediatek/ims/ImsService;->setRcsFeatureCallback(ILcom/mediatek/ims/ImsService$IMtkRcsFeatureCallback;)V

    .line 159
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/feature/MtkRcsFeature;->setFeatureState(I)V

    .line 162
    :cond_2
    const-string v0, "MtkRcsFeature loded"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/feature/MtkRcsFeature;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/feature/MtkRcsFeature;

    .line 101
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/ims/feature/MtkRcsFeature;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/feature/MtkRcsFeature;
    .param p1, "x1"    # Landroid/content/Context;

    .line 101
    iput-object p1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mContext:Landroid/content/Context;

    return-object p1
.end method


# virtual methods
.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 7
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeEnabledCapabilities : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRcsFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v0

    .line 242
    .local v0, "pairs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 243
    .local v3, "pair":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CapabilityChangeRequest : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v5

    if-nez v5, :cond_0

    .line 245
    iget-object v4, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mRcsCapabilitiesLte:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->addCapabilities(I)V

    goto :goto_1

    .line 246
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 247
    iget-object v4, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mRcsCapabilitiesIWan:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->addCapabilities(I)V

    .line 249
    .end local v3    # "pair":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    :cond_1
    :goto_1
    goto :goto_0

    .line 250
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabled RCS capabilities : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v0

    .line 255
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 256
    .restart local v3    # "pair":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disabled RCS capabilities >> CapabilityChangeRequest : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v5

    if-nez v5, :cond_3

    .line 258
    iget-object v5, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mRcsCapabilitiesLte:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->removeCapabilities(I)V

    goto :goto_3

    .line 259
    :cond_3
    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 260
    iget-object v5, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mRcsCapabilitiesIWan:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->removeCapabilities(I)V

    .line 262
    .end local v3    # "pair":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    :cond_4
    :goto_3
    goto :goto_2

    .line 264
    :cond_5
    return-void
.end method

.method public createCapabilityExchangeImpl(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
    .locals 3
    .param p1, "listener"    # Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 168
    iput-object p1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 169
    new-instance v0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mSlotId:I

    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p1}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;-><init>(ILandroid/content/Context;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mCapExchangeImpl:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkRcsFeature >> mCapExchangeImpl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mCapExchangeImpl:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mCapEventListener : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Context : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",SLot id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRcsFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mCapExchangeImpl:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    return-object v0
.end method

.method public destroyCapabilityExchangeImpl(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;)V
    .locals 2
    .param p1, "capExchangeImpl"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyCapabilityExchangeImpl >> mCapEventListener : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRcsFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method public disableIms(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImsServiceImpl >> disableIms called! >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRcsFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->disableIms(I)V

    .line 213
    :cond_0
    return-void
.end method

.method public enableIms(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImsServiceImpl >> enableIms called! >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRcsFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->enableIms(I)V

    .line 202
    :cond_0
    return-void
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 3

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "configInterface":Lcom/android/ims/internal/IImsConfig;
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v1, :cond_0

    .line 221
    iget v2, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsService;->onGetConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    .line 223
    :cond_0
    return-object v0
.end method

.method public final onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 228
    :try_start_0
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/RcsFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesStatusChanged error. msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkRcsFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method public onFeatureReady()V
    .locals 2

    .line 194
    const-string v0, "MtkRcsFeature"

    const-string v1, "onFeatureReady called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public queryCapabilityConfiguration(II)Z
    .locals 2
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCapabilityConfiguration >> radioTech : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRcsFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    if-nez p2, :cond_0

    .line 270
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mRcsCapabilitiesLte:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v0

    return v0

    .line 271
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mRcsCapabilitiesIWan:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v0

    return v0

    .line 274
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
