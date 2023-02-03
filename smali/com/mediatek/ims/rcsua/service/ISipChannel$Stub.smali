.class public abstract Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;
.super Landroid/os/Binder;
.source "ISipChannel.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/ISipChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/ISipChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_close:I = 0x3

.field static final TRANSACTION_isAvailable:I = 0x4

.field static final TRANSACTION_readConfiguration:I = 0x5

.field static final TRANSACTION_sendMessage:I = 0x1

.field static final TRANSACTION_sendMessageAosp:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.mediatek.ims.rcsua.service.ISipChannel"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/ISipChannel;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    const-string v0, "com.mediatek.ims.rcsua.service.ISipChannel"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/rcsua/service/ISipChannel;

    if-eqz v1, :cond_1

    .line 53
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/rcsua/service/ISipChannel;

    return-object v1

    .line 55
    :cond_1
    new-instance v1, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipChannel;
    .locals 1

    .line 319
    sget-object v0, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/rcsua/service/ISipChannel;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 309
    sget-object v0, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    if-nez v0, :cond_1

    .line 312
    if-eqz p0, :cond_0

    .line 313
    sput-object p0, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 314
    const/4 v0, 0x1

    return v0

    .line 316
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 310
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 59
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const-string v0, "com.mediatek.ims.rcsua.service.ISipChannel"

    .line 64
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 72
    packed-switch p1, :pswitch_data_1

    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 68
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return v1

    .line 140
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->readConfiguration()Lcom/mediatek/ims/rcsua/Configuration;

    move-result-object v2

    .line 142
    .local v2, "_result":Lcom/mediatek/ims/rcsua/Configuration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {v2, p3, v1}, Lcom/mediatek/ims/rcsua/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 148
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    :goto_0
    return v1

    .line 132
    .end local v2    # "_result":Lcom/mediatek/ims/rcsua/Configuration;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->isAvailable()Z

    move-result v2

    .line 134
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    return v1

    .line 116
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    new-instance v2, Lcom/mediatek/ims/rcsua/service/RcsUaException;

    invoke-direct {v2}, Lcom/mediatek/ims/rcsua/service/RcsUaException;-><init>()V

    .line 119
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->close(Lcom/mediatek/ims/rcsua/service/RcsUaException;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    nop

    .line 122
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {v2, p3, v1}, Lcom/mediatek/ims/rcsua/service/RcsUaException;->writeToParcel(Landroid/os/Parcel;I)V

    .line 128
    return v1

    .line 95
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 99
    .local v2, "_arg0":[B
    new-instance v3, Lcom/mediatek/ims/rcsua/service/RcsUaException;

    invoke-direct {v3}, Lcom/mediatek/ims/rcsua/service/RcsUaException;-><init>()V

    .line 101
    .local v3, "_arg1":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    move-result-object v4

    .line 102
    .local v4, "_arg2":Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->sendMessageAosp([BLcom/mediatek/ims/rcsua/service/RcsUaException;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)I

    move-result v5

    .line 103
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    nop

    .line 106
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {v3, p3, v1}, Lcom/mediatek/ims/rcsua/service/RcsUaException;->writeToParcel(Landroid/os/Parcel;I)V

    .line 112
    return v1

    .line 76
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    .end local v4    # "_arg2":Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    .end local v5    # "_result":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 80
    .restart local v2    # "_arg0":[B
    new-instance v3, Lcom/mediatek/ims/rcsua/service/RcsUaException;

    invoke-direct {v3}, Lcom/mediatek/ims/rcsua/service/RcsUaException;-><init>()V

    .line 81
    .restart local v3    # "_arg1":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->sendMessage([BLcom/mediatek/ims/rcsua/service/RcsUaException;)I

    move-result v4

    .line 82
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    nop

    .line 85
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {v3, p3, v1}, Lcom/mediatek/ims/rcsua/service/RcsUaException;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
