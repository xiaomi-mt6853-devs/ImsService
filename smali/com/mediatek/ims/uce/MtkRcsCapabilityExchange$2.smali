.class Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$2;
.super Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;
.source "MtkRcsCapabilityExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    .line 186
    iput-object p1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$2;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V
    .locals 0
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "cb"    # Landroid/telephony/ims/aidl/IOptionsRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsRequestCallback;",
            ")V"
        }
    .end annotation

    .line 210
    .local p2, "remoteCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onRequestPublishCapabilities(I)V
    .locals 4
    .param p1, "type"    # I

    .line 190
    const-string v0, "MtkRcsCapabilityExchange"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestPublishCapabilities trigger :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$2;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    invoke-static {v1}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->access$100(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;)Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onRequestPublishCapabilities(I)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_0

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Landroid/telephony/ims/ImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsException :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v1    # "e":Landroid/telephony/ims/ImsException;
    :goto_0
    return-void
.end method

.method public onUnpublish()V
    .locals 3

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$2;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    invoke-static {v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->access$100(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;)Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onUnpublish()V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/telephony/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsException :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkRcsCapabilityExchange"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :goto_0
    return-void
.end method
