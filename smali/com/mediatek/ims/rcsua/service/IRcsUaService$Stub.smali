.class public abstract Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;
.super Landroid/os/Binder;
.source "IRcsUaService.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/IRcsUaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/IRcsUaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_activate:I = 0x1

.field static final TRANSACTION_addCapability:I = 0x6

.field static final TRANSACTION_clearAcsConfiguration:I = 0x1a

.field static final TRANSACTION_deactivate:I = 0x2

.field static final TRANSACTION_getAcsConfigInt:I = 0x12

.field static final TRANSACTION_getAcsConfigString:I = 0x13

.field static final TRANSACTION_getAcsConfiguration:I = 0x11

.field static final TRANSACTION_getAcsSwitchState:I = 0x18

.field static final TRANSACTION_getCapabilities:I = 0xd

.field static final TRANSACTION_getOptions:I = 0xc

.field static final TRANSACTION_isAcsConnected:I = 0x14

.field static final TRANSACTION_isActivated:I = 0xe

.field static final TRANSACTION_registerAcsCallback:I = 0xf

.field static final TRANSACTION_registerClient:I = 0x9

.field static final TRANSACTION_removeCapability:I = 0x7

.field static final TRANSACTION_setAcsProvisioningAddress:I = 0x19

.field static final TRANSACTION_setAcsSwitchState:I = 0x16

.field static final TRANSACTION_setAcsonfiguration:I = 0x17

.field static final TRANSACTION_setOptions:I = 0xb

.field static final TRANSACTION_triggerAcsRequest:I = 0x15

.field static final TRANSACTION_triggerForceReregistration:I = 0x4

.field static final TRANSACTION_triggerReregistration:I = 0x3

.field static final TRANSACTION_triggerRestoration:I = 0x5

.field static final TRANSACTION_unregisterAcsCallback:I = 0x10

.field static final TRANSACTION_unregisterClient:I = 0xa

.field static final TRANSACTION_updateCapabilities:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 111
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 119
    if-nez p0, :cond_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_0
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 123
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_1

    .line 124
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object v1

    .line 126
    :cond_1
    new-instance v1, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 1

    .line 1102
    sget-object v0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/rcsua/service/IRcsUaService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 1092
    sget-object v0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-nez v0, :cond_1

    .line 1095
    if-eqz p0, :cond_0

    .line 1096
    sput-object p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 1097
    const/4 v0, 0x1

    return v0

    .line 1099
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1093
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 130
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

    .line 134
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaService"

    .line 135
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 143
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_1

    .line 427
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 139
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v1

    .line 419
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->clearAcsConfiguration()Z

    move-result v2

    .line 421
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    return v1

    .line 409
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setAcsProvisioningAddress(Ljava/lang/String;)Z

    move-result v3

    .line 413
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    return v1

    .line 401
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsSwitchState()Z

    move-result v2

    .line 403
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    return v1

    .line 386
    .end local v2    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    return v1

    .line 376
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 379
    .local v2, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setAcsSwitchState(Z)Z

    move-result v3

    .line 380
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    return v1

    .line 367
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 370
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerAcsRequest(I)V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    return v1

    .line 359
    .end local v2    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->isAcsConnected()Z

    move-result v2

    .line 361
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    return v1

    .line 349
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    return v1

    .line 339
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v3

    .line 343
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    return v1

    .line 325
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v3

    .line 327
    .local v3, "_result":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    if-eqz v3, :cond_1

    .line 329
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    invoke-virtual {v3, p3, v1}, Lcom/mediatek/ims/rcsua/AcsConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    :goto_0
    return v1

    .line 316
    .end local v3    # "_result":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    move-result-object v2

    .line 319
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    return v1

    .line 307
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    move-result-object v2

    .line 310
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->registerAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    return v1

    .line 299
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->isActivated()Z

    move-result v2

    .line 301
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    return v1

    .line 285
    .end local v2    # "_result":Z
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v3

    .line 287
    .local v3, "_result":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    if-eqz v3, :cond_2

    .line 289
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    invoke-virtual {v3, p3, v1}, Lcom/mediatek/ims/rcsua/Capability;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 293
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    :goto_1
    return v1

    .line 271
    .end local v3    # "_result":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getOptions()Landroid/os/Bundle;

    move-result-object v3

    .line 273
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    if-eqz v3, :cond_3

    .line 275
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    invoke-virtual {v3, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 279
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    :goto_2
    return v1

    .line 257
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 260
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg0":Landroid/os/Bundle;
    goto :goto_3

    .line 263
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :cond_4
    const/4 v2, 0x0

    .line 265
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setOptions(Landroid/os/Bundle;)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    return v1

    .line 248
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v2

    .line 251
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->unregisterClient(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    return v1

    .line 238
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    move-result-object v2

    .line 241
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/IImsEventCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->registerClient(Lcom/mediatek/ims/rcsua/service/IImsEventCallback;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v3

    .line 242
    .local v3, "_result":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 244
    return v1

    .line 224
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IImsEventCallback;
    .end local v3    # "_result":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 227
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    goto :goto_5

    .line 230
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :cond_6
    const/4 v2, 0x0

    .line 232
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :goto_5
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    return v1

    .line 210
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 213
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    goto :goto_6

    .line 216
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :cond_7
    const/4 v2, 0x0

    .line 218
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :goto_6
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    return v1

    .line 196
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 199
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    goto :goto_7

    .line 202
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :cond_8
    const/4 v2, 0x0

    .line 204
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :goto_7
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->addCapability(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    return v1

    .line 189
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerRestoration()V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    return v1

    .line 175
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 178
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    goto :goto_8

    .line 181
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :cond_9
    const/4 v2, 0x0

    .line 183
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :goto_8
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerForceReregistration(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    return v1

    .line 161
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 164
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    goto :goto_9

    .line 167
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :cond_a
    const/4 v2, 0x0

    .line 169
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :goto_9
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    return v1

    .line 154
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->deactivate()V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    return v1

    .line 147
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->activate()V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
