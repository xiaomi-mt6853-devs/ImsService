.class public abstract Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub;
.super Landroid/os/Binder;
.source "IMtkCoreServiceWrapper.java"

# interfaces
.implements Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getAospOptionsServiceBinder:I = 0xc

.field static final TRANSACTION_getAospPresenceServiceBinder:I = 0xa

.field static final TRANSACTION_getCapabilitiesServiceBinder:I = 0x3

.field static final TRANSACTION_getChatServiceBinder:I = 0x1

.field static final TRANSACTION_getContactsServiceBinder:I = 0x4

.field static final TRANSACTION_getFileTransferServiceBinder:I = 0x2

.field static final TRANSACTION_getGeolocServiceBinder:I = 0x5

.field static final TRANSACTION_getHistoryServiceBinder:I = 0x9

.field static final TRANSACTION_getImageSharingServiceBinder:I = 0x7

.field static final TRANSACTION_getMtkPresenceServiceBinder:I = 0xb

.field static final TRANSACTION_getNetworkConnectivityApiBinder:I = 0x8

.field static final TRANSACTION_getVideoSharingServiceBinder:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    const-string v0, "com.mediatek.presence.service.IMtkCoreServiceWrapper"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    const-string v0, "com.mediatek.presence.service.IMtkCoreServiceWrapper"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;

    if-eqz v1, :cond_1

    .line 85
    move-object v1, v0

    check-cast v1, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;

    return-object v1

    .line 87
    :cond_1
    new-instance v1, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;
    .locals 1

    .line 524
    sget-object v0, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;

    .line 514
    sget-object v0, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;

    if-nez v0, :cond_1

    .line 517
    if-eqz p0, :cond_0

    .line 518
    sput-object p0, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;

    .line 519
    const/4 v0, 0x1

    return v0

    .line 521
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 515
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 91
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

    .line 95
    const-string v0, "com.mediatek.presence.service.IMtkCoreServiceWrapper"

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 104
    packed-switch p1, :pswitch_data_1

    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 100
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 200
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 203
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub;->getAospOptionsServiceBinder(I)Landroid/os/IBinder;

    move-result-object v3

    .line 204
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 206
    return v1

    .line 190
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub;->getMtkPresenceServiceBinder(I)Landroid/os/IBinder;

    move-result-object v3

    .line 194
    .restart local v3    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 196
    return v1

    .line 180
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub;->getAospPresenceServiceBinder(I)Landroid/os/IBinder;

    move-result-object v3

    .line 184
    .restart local v3    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 186
    return v1

    .line 172
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub;->getHistoryServiceBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 174
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 176
    return v1

    .line 164
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub;->getNetworkConnectivityApiBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 166
    .restart local v2    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 168
    return v1

    .line 156
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub;->getImageSharingServiceBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 158
    .restart local v2    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 160
    return v1

    .line 148
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub;->getVideoSharingServiceBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 150
    .restart local v2    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 152
    return v1

    .line 140
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub;->getGeolocServiceBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 142
    .restart local v2    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 144
    return v1

    .line 132
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub;->getContactsServiceBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 134
    .restart local v2    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 136
    return v1

    .line 124
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub;->getCapabilitiesServiceBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 126
    .restart local v2    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 128
    return v1

    .line 116
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub;->getFileTransferServiceBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 118
    .restart local v2    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 120
    return v1

    .line 108
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub;->getChatServiceBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 110
    .restart local v2    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 112
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
