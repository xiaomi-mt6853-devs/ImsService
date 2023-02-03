.class Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRcsUaService.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/IRcsUaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IRcsUaService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 437
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 449
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 451
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 452
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 453
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 454
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 455
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->activate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 456
    return-void

    .line 459
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 464
    nop

    .line 465
    return-void

    .line 462
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 464
    throw v2
.end method

.method public addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 5
    .param p1, "capability"    # Lcom/mediatek/ims/rcsua/Capability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 563
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 565
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 566
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 567
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    invoke-virtual {p1, v0, v2}, Lcom/mediatek/ims/rcsua/Capability;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 571
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 574
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 575
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 576
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 577
    return-void

    .line 580
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 585
    nop

    .line 586
    return-void

    .line 583
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 585
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public clearAcsConfiguration()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1041
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1044
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1045
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1046
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1047
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1048
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->clearAcsConfiguration()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1048
    return v3

    .line 1051
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1052
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1055
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1057
    nop

    .line 1058
    return v2

    .line 1055
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1057
    throw v2
.end method

.method public deactivate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 469
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 471
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 473
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 474
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 475
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 476
    return-void

    .line 479
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 484
    nop

    .line 485
    return-void

    .line 482
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 484
    throw v2
.end method

.method public getAcsConfigInt(Ljava/lang/String;)I
    .locals 5
    .param p1, "configItem"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 860
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 863
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 865
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 866
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 867
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 868
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 868
    return v3

    .line 871
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 872
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 875
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 877
    nop

    .line 878
    return v2

    .line 875
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 877
    throw v2
.end method

.method public getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "configItem"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 883
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 886
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 887
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 888
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 889
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 890
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 891
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 891
    return-object v3

    .line 894
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 895
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 898
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 900
    nop

    .line 901
    return-object v2

    .line 898
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 900
    throw v2
.end method

.method public getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 832
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 833
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 836
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 837
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 838
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 839
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 840
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 840
    return-object v3

    .line 843
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 844
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 845
    sget-object v3, Lcom/mediatek/ims/rcsua/AcsConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    goto :goto_0

    .line 848
    .end local v3    # "_result":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :cond_1
    const/4 v3, 0x0

    .line 852
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 854
    nop

    .line 855
    return-object v3

    .line 852
    .end local v3    # "_result":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 854
    throw v2
.end method

.method public getAcsSwitchState()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 996
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 999
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1000
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1001
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1002
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1003
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsSwitchState()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1010
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1003
    return v3

    .line 1006
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1007
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1010
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1012
    nop

    .line 1013
    return v2

    .line 1010
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1012
    throw v2
.end method

.method public getCapabilities()Lcom/mediatek/ims/rcsua/Capability;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 741
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 742
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 745
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 746
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 747
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 748
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 749
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 749
    return-object v3

    .line 752
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 753
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 754
    sget-object v3, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Capability;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/mediatek/ims/rcsua/Capability;
    goto :goto_0

    .line 757
    .end local v3    # "_result":Lcom/mediatek/ims/rcsua/Capability;
    :cond_1
    const/4 v3, 0x0

    .line 761
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/mediatek/ims/rcsua/Capability;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 763
    nop

    .line 764
    return-object v3

    .line 761
    .end local v3    # "_result":Lcom/mediatek/ims/rcsua/Capability;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 763
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 444
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaService"

    return-object v0
.end method

.method public getOptions()Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 714
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 715
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 718
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 719
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 720
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 721
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 722
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getOptions()Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 722
    return-object v3

    .line 725
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 726
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 727
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 730
    .end local v3    # "_result":Landroid/os/Bundle;
    :cond_1
    const/4 v3, 0x0

    .line 734
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 736
    nop

    .line 737
    return-object v3

    .line 734
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 736
    throw v2
.end method

.method public isAcsConnected()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 906
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 909
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 910
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 911
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 912
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 913
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->isAcsConnected()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 913
    return v3

    .line 916
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 917
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 920
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 922
    nop

    .line 923
    return v2

    .line 920
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 922
    throw v2
.end method

.method public isActivated()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 769
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 772
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 773
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 774
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 775
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 776
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->isActivated()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 776
    return v3

    .line 779
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 780
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 783
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 785
    nop

    .line 786
    return v2

    .line 783
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 785
    throw v2
.end method

.method public registerAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 791
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 793
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 794
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 795
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 796
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 797
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 798
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->registerAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 799
    return-void

    .line 802
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 805
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 807
    nop

    .line 808
    return-void

    .line 805
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 807
    throw v2
.end method

.method public registerClient(Lcom/mediatek/ims/rcsua/service/IImsEventCallback;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    .locals 5
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/service/IImsEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 644
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 647
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 648
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 649
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 650
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 651
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 652
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->registerClient(Lcom/mediatek/ims/rcsua/service/IImsEventCallback;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 652
    return-object v3

    .line 655
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 656
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 659
    .local v2, "_result":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 661
    nop

    .line 662
    return-object v2

    .line 659
    .end local v2    # "_result":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 661
    throw v2
.end method

.method public removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 5
    .param p1, "capability"    # Lcom/mediatek/ims/rcsua/Capability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 590
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 592
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 593
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 594
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    invoke-virtual {p1, v0, v2}, Lcom/mediatek/ims/rcsua/Capability;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 598
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 601
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 602
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 603
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 604
    return-void

    .line 607
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 612
    nop

    .line 613
    return-void

    .line 610
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 612
    throw v2
.end method

.method public setAcsProvisioningAddress(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1018
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1021
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1023
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1024
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1025
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1026
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsProvisioningAddress(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1026
    return v3

    .line 1029
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1030
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1033
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1035
    nop

    .line 1036
    return v2

    .line 1033
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1035
    throw v2
.end method

.method public setAcsSwitchState(Z)Z
    .locals 6
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 949
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 952
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 953
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    iget-object v4, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x16

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 955
    .local v4, "_status":Z
    if-nez v4, :cond_1

    .line 956
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 957
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsSwitchState(Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 957
    return v2

    .line 960
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 961
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 964
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 966
    nop

    .line 967
    return v2

    .line 964
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 966
    throw v2
.end method

.method public setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "rcsVersion"    # Ljava/lang/String;
    .param p2, "rcsProfile"    # Ljava/lang/String;
    .param p3, "clientVendor"    # Ljava/lang/String;
    .param p4, "clientVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 972
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 974
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 977
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 979
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 980
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 981
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 982
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 983
    return-void

    .line 986
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 989
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 991
    nop

    .line 992
    return-void

    .line 989
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 991
    throw v2
.end method

.method public setOptions(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 687
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 688
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 690
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 691
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 692
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 696
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 699
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 700
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 701
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setOptions(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 702
    return-void

    .line 705
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 710
    nop

    .line 711
    return-void

    .line 708
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 710
    throw v2
.end method

.method public triggerAcsRequest(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 928
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 930
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 933
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 934
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 935
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerAcsRequest(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 936
    return-void

    .line 939
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 942
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 944
    nop

    .line 945
    return-void

    .line 942
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 944
    throw v2
.end method

.method public triggerForceReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 5
    .param p1, "features"    # Lcom/mediatek/ims/rcsua/Capability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 516
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 518
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 519
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 520
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    invoke-virtual {p1, v0, v2}, Lcom/mediatek/ims/rcsua/Capability;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 524
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 527
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 528
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 529
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerForceReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 530
    return-void

    .line 533
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 538
    nop

    .line 539
    return-void

    .line 536
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 538
    throw v2
.end method

.method public triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 5
    .param p1, "features"    # Lcom/mediatek/ims/rcsua/Capability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 489
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 491
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 492
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 493
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    invoke-virtual {p1, v0, v2}, Lcom/mediatek/ims/rcsua/Capability;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 497
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 500
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 501
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 502
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 503
    return-void

    .line 506
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 511
    nop

    .line 512
    return-void

    .line 509
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 511
    throw v2
.end method

.method public triggerRestoration()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 543
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 545
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 546
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 547
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 548
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 549
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerRestoration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 550
    return-void

    .line 553
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 558
    nop

    .line 559
    return-void

    .line 556
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 558
    throw v2
.end method

.method public unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 812
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 814
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 815
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 816
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 817
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 818
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 819
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 820
    return-void

    .line 823
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 826
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 828
    nop

    .line 829
    return-void

    .line 826
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 828
    throw v2
.end method

.method public unregisterClient(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V
    .locals 5
    .param p1, "client"    # Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 667
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 669
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 670
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 671
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 672
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 673
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 674
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterClient(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 675
    return-void

    .line 678
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 683
    nop

    .line 684
    return-void

    .line 681
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 683
    throw v2
.end method

.method public updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 5
    .param p1, "capabilities"    # Lcom/mediatek/ims/rcsua/Capability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 617
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 619
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 620
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 621
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    invoke-virtual {p1, v0, v2}, Lcom/mediatek/ims/rcsua/Capability;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 625
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 628
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 629
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 630
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 631
    return-void

    .line 634
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 639
    nop

    .line 640
    return-void

    .line 637
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 639
    throw v2
.end method
