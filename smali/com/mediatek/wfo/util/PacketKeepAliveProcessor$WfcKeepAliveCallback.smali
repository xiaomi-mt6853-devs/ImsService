.class Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;
.super Landroid/net/SocketKeepalive$Callback;
.source "PacketKeepAliveProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WfcKeepAliveCallback"
.end annotation


# instance fields
.field config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

.field mIsError:Z

.field mIsStarted:Z

.field final synthetic this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;


# direct methods
.method public constructor <init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;
    .param p2, "config"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 155
    iput-object p1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    invoke-direct {p0}, Landroid/net/SocketKeepalive$Callback;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsStarted:Z

    .line 153
    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsError:Z

    .line 156
    iput-object p2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 157
    return-void
.end method

.method private errorToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "error"    # I

    .line 193
    const-string v0, "unknown"

    .line 194
    .local v0, "str":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 196
    :pswitch_1
    const-string v0, "ERROR_INVALID_NETWORK"

    .line 197
    goto :goto_0

    .line 199
    :pswitch_2
    const-string v0, "ERROR_INVALID_IP_ADDRESS"

    .line 200
    goto :goto_0

    .line 202
    :pswitch_3
    const-string v0, "ERROR_INVALID_PORT"

    .line 203
    goto :goto_0

    .line 205
    :pswitch_4
    const-string v0, "ERROR_INVALID_LENGTH"

    .line 206
    goto :goto_0

    .line 208
    :pswitch_5
    const-string v0, "ERROR_INVALID_INTERVAL"

    .line 209
    goto :goto_0

    .line 211
    :pswitch_6
    const-string v0, "ERROR_HARDWARE_UNSUPPORTED"

    .line 212
    goto :goto_0

    .line 214
    :pswitch_7
    const-string v0, "ERROR_HARDWARE_ERROR"

    .line 215
    nop

    .line 219
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch -0x1f
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isError()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsError:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsStarted:Z

    return v0
.end method

.method public onError(I)V
    .locals 2
    .param p1, "error"    # I

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keepAlive is failed, error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->errorToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    const-string v1, "PacketKeepAliveProcessor"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsError:Z

    .line 190
    return-void
.end method

.method public onStarted()V
    .locals 5

    .line 169
    const-string v0, "PacketKeepAliveProcessor"

    const-string v1, "keepAlive is started!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsStarted:Z

    .line 171
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v0, v0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v1, v1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    const/16 v3, 0x3ef

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    return-void
.end method

.method public onStopped()V
    .locals 5

    .line 177
    const-string v0, "PacketKeepAliveProcessor"

    const-string v1, "keepAlive is stopped!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsStarted:Z

    .line 179
    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsError:Z

    .line 180
    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    iput-boolean v0, v1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->enable:Z

    .line 181
    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v1, v1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v2, v2, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    const/16 v4, 0x3ef

    invoke-virtual {v2, v4, v0, v0, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 183
    return-void
.end method
