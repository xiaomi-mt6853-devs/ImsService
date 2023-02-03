.class public final Lcom/mediatek/ims/rcsua/SipChannel;
.super Ljava/lang/Object;
.source "SipChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;,
        Lcom/mediatek/ims/rcsua/SipChannel$ChannelMode;
    }
.end annotation


# static fields
.field public static final MODE_STANDALONE_PRESENCE:I = 0x1

.field public static final MODE_UNIFIED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[RcsUaService][API]"


# instance fields
.field private callback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

.field private channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

.field private client:Lcom/mediatek/ims/rcsua/Client;

.field private service:Lcom/mediatek/ims/rcsua/RcsUaService;

.field private transport:I


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/Client;Lcom/mediatek/ims/rcsua/service/ISipChannel;ILcom/mediatek/ims/rcsua/SipChannel$EventCallback;)V
    .locals 0
    .param p1, "service"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p2, "client"    # Lcom/mediatek/ims/rcsua/Client;
    .param p3, "channel"    # Lcom/mediatek/ims/rcsua/service/ISipChannel;
    .param p4, "transport"    # I
    .param p5, "callback"    # Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p3, p0, Lcom/mediatek/ims/rcsua/SipChannel;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 190
    iput-object p5, p0, Lcom/mediatek/ims/rcsua/SipChannel;->callback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    .line 191
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/SipChannel;->service:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 192
    iput-object p2, p0, Lcom/mediatek/ims/rcsua/SipChannel;->client:Lcom/mediatek/ims/rcsua/Client;

    .line 193
    iput p4, p0, Lcom/mediatek/ims/rcsua/SipChannel;->transport:I

    .line 194
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/SipChannel;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    if-nez v0, :cond_0

    .line 127
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/SipChannel;->client:Lcom/mediatek/ims/rcsua/Client;

    invoke-virtual {v0, p0}, Lcom/mediatek/ims/rcsua/Client;->channelClosed(Lcom/mediatek/ims/rcsua/SipChannel;)I

    move-result v0

    .line 131
    .local v0, "restActiveChannelNum":I
    if-nez v0, :cond_1

    .line 132
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/rcsua/service/RcsUaException;

    invoke-direct {v1}, Lcom/mediatek/ims/rcsua/service/RcsUaException;-><init>()V

    .line 133
    .local v1, "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/SipChannel;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    invoke-interface {v2, v1}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->close(Lcom/mediatek/ims/rcsua/service/RcsUaException;)V

    .line 134
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/rcsua/SipChannel;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v1    # "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 138
    :cond_1
    :goto_0
    nop

    .line 139
    :goto_1
    return-void
.end method

.method handleSipMessageReceived([B)V
    .locals 4
    .param p1, "message"    # [B

    .line 201
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/SipChannel;->callback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    new-instance v1, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$Runner;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$Runner;-><init>(Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;[[B)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;->run(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public isConnected()Z
    .locals 3

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, "connected":Z
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/SipChannel;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/SipChannel;->service:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/SipChannel;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->isAvailable()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 153
    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 157
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConnected["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]: channelIntf["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcsua/SipChannel;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[RcsUaService][API]"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v0
.end method

.method isTransportSupported(I)Z
    .locals 1
    .param p1, "transport"    # I

    .line 197
    iget v0, p0, Lcom/mediatek/ims/rcsua/SipChannel;->transport:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sendMessage([B)V
    .locals 2
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/SipChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :try_start_0
    new-instance v0, Lcom/mediatek/ims/rcsua/service/RcsUaException;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/service/RcsUaException;-><init>()V

    .line 88
    .local v0, "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/SipChannel;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    invoke-interface {v1, p1, v0}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->sendMessage([BLcom/mediatek/ims/rcsua/service/RcsUaException;)I

    .line 89
    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/service/RcsUaException;->isSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/service/RcsUaException;->throwException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    :cond_0
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 95
    :goto_0
    return-void

    .line 83
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SIP channel not available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMessageAosp([BLandroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .locals 3
    .param p1, "message"    # [B
    .param p2, "mMessageCallback"    # Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessage message["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[RcsUaService][API]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage channelIntf["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcsua/SipChannel;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] , mMessageCallback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/SipChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :try_start_0
    new-instance v0, Lcom/mediatek/ims/rcsua/service/RcsUaException;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/service/RcsUaException;-><init>()V

    .line 113
    .local v0, "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/SipChannel;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    invoke-interface {v1, p1, v0, p2}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->sendMessageAosp([BLcom/mediatek/ims/rcsua/service/RcsUaException;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)I

    .line 114
    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/service/RcsUaException;->isSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/service/RcsUaException;->throwException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0    # "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    :cond_0
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 120
    :goto_0
    return-void

    .line 108
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SIP channel not available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
