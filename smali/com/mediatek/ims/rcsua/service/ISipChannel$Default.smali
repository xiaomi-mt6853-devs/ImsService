.class public Lcom/mediatek/ims/rcsua/service/ISipChannel$Default;
.super Ljava/lang/Object;
.source "ISipChannel.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/ISipChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/ISipChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public close(Lcom/mediatek/ims/rcsua/service/RcsUaException;)V
    .locals 0
    .param p1, "e"    # Lcom/mediatek/ims/rcsua/service/RcsUaException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public isAvailable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public readConfiguration()Lcom/mediatek/ims/rcsua/Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendMessage([BLcom/mediatek/ims/rcsua/service/RcsUaException;)I
    .locals 1
    .param p1, "message"    # [B
    .param p2, "e"    # Lcom/mediatek/ims/rcsua/service/RcsUaException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessageAosp([BLcom/mediatek/ims/rcsua/service/RcsUaException;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)I
    .locals 1
    .param p1, "message"    # [B
    .param p2, "e"    # Lcom/mediatek/ims/rcsua/service/RcsUaException;
    .param p3, "mMessageCallback"    # Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method
