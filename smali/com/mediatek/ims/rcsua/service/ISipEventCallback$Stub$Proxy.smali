.class Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISipEventCallback.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/ISipEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 80
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "com.mediatek.ims.rcsua.service.ISipEventCallback"

    return-object v0
.end method

.method public messageReceived(I[B)V
    .locals 4
    .param p1, "transport"    # I
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 93
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.rcsua.service.ISipEventCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 96
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 97
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 98
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 99
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback;->messageReceived(I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 100
    return-void

    .line 105
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    nop

    .line 107
    return-void

    .line 105
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    throw v1
.end method
