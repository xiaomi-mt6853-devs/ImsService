.class Lcom/mediatek/ims/rcse/MtkSipDelegate$1;
.super Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;
.source "MtkSipDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcse/MtkSipDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcse/MtkSipDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcse/MtkSipDelegate;

    .line 197
    iput-object p1, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$1;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Landroid/telephony/ims/SipMessage;)V
    .locals 0
    .param p1, "message"    # Landroid/telephony/ims/SipMessage;

    .line 202
    return-void
.end method

.method public onMessageSendFailure(Ljava/lang/String;I)V
    .locals 2
    .param p1, "viaTransactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mtkSipDelegateMc onMessageSendFailure viaTransactionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSipDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$1;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Landroid/telephony/ims/DelegateMessageCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V

    .line 215
    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .locals 2
    .param p1, "viaTransactionId"    # Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mtkSipDelegateMc onMessageSent viaTransactionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSipDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$1;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Landroid/telephony/ims/DelegateMessageCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageSent(Ljava/lang/String;)V

    .line 209
    return-void
.end method
