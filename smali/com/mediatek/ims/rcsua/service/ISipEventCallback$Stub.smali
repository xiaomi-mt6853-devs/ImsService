.class public abstract Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;
.super Landroid/os/Binder;
.source "ISipEventCallback.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/ISipEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/ISipEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_messageReceived:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.mediatek.ims.rcsua.service.ISipEventCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/ISipEventCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    const-string v0, "com.mediatek.ims.rcsua.service.ISipEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    if-eqz v1, :cond_1

    .line 37
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    return-object v1

    .line 39
    :cond_1
    new-instance v1, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipEventCallback;
    .locals 1

    .line 125
    sget-object v0, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/rcsua/service/ISipEventCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    .line 115
    sget-object v0, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    if-nez v0, :cond_1

    .line 118
    if-eqz p0, :cond_0

    .line 119
    sput-object p0, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    .line 120
    const/4 v0, 0x1

    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const-string v0, "com.mediatek.ims.rcsua.service.ISipEventCallback"

    .line 48
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 56
    packed-switch p1, :pswitch_data_1

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 52
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return v1

    .line 60
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 64
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 65
    .local v3, "_arg1":[B
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;->messageReceived(I[B)V

    .line 66
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
