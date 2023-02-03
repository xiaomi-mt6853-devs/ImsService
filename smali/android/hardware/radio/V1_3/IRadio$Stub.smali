.class public abstract Landroid/hardware/radio/V1_3/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_3/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_3/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2930
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2933
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2949
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2989
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2990
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2991
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2992
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2993
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 2961
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x5ft
        -0x3at
        -0x50t
        0x76t
        0x1bt
        -0x35t
        -0x77t
        -0x2at
        -0x41t
        0x15t
        -0x5ft
        0x56t
        -0x7t
        0x30t
        0x6bt
        -0x80t
        -0x70t
        -0x4dt
        -0x57t
        0x16t
        -0x5ft
        0x5ft
        -0x16t
        0x16t
        -0x77t
        -0x4ct
        -0x50t
        -0x3ft
        0x73t
        -0x72t
        0x38t
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x2bt
        0x5at
        -0x2t
        -0xat
        -0x72t
        0x3et
        0x2ft
        -0xft
        -0x26t
        -0x4at
        0x3et
        0x4ft
        0x2et
        -0x1bt
        0x73t
        0x37t
        -0x11t
        0x26t
        0x35t
        -0x14t
        -0x7ft
        0x2ft
        0x49t
        0x8t
        0xct
        -0x53t
        -0x4t
        -0x17t
        0x66t
        -0x2dt
        0x3bt
        0x52t
    .end array-data

    :array_2
    .array-data 1
        -0x7at
        -0x5t
        0x7t
        -0x66t
        0x60t
        0xbt
        0x23t
        0x1t
        -0x59t
        0x52t
        0x24t
        -0x63t
        -0x5t
        -0x4t
        0x53t
        -0x68t
        0x3at
        0x79t
        0x5dt
        0x75t
        0x2ft
        0x11t
        -0x56t
        -0x44t
        -0x4at
        -0x7dt
        0x15t
        -0x5ft
        -0x77t
        -0xat
        -0x37t
        -0x5et
    .end array-data

    :array_3
    .array-data 1
        -0x31t
        -0x56t
        -0x50t
        -0x1ct
        0x5ct
        0x5dt
        0x7bt
        0x35t
        -0x6bt
        0x3t
        0x2dt
        0x64t
        -0x63t
        -0x5et
        -0x62t
        -0x29t
        0x12t
        -0x17t
        0x20t
        -0x7t
        0x56t
        -0x3ft
        0x36t
        0x71t
        -0x11t
        -0x2dt
        0x56t
        0x2t
        -0x6t
        -0x7ft
        -0x37t
        0x23t
    .end array-data

    :array_4
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2938
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.3::IRadio"

    const-string v2, "android.hardware.radio@1.2::IRadio"

    const-string v3, "android.hardware.radio@1.1::IRadio"

    const-string v4, "android.hardware.radio@1.0::IRadio"

    const-string v5, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 2955
    const-string v0, "android.hardware.radio@1.3::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2977
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2999
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3001
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 22
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3029
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v0, "android.hardware.radio@1.3::IRadio"

    const-string v1, "android.hardware.radio@1.2::IRadio"

    const-string v2, "android.hardware.radio@1.1::IRadio"

    const-string v3, "android.hidl.base@1.0::IBase"

    const/4 v4, 0x0

    const-string v5, "android.hardware.radio@1.0::IRadio"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 4613
    :sswitch_0
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4615
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->notifySyspropsChanged()V

    .line 4616
    goto/16 :goto_1

    .line 4602
    :sswitch_1
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4604
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 4605
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4606
    invoke-virtual {v0, v12}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4607
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4608
    goto/16 :goto_1

    .line 4592
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4594
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->ping()V

    .line 4595
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4596
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4597
    goto/16 :goto_1

    .line 4587
    :sswitch_3
    goto/16 :goto_1

    .line 4579
    :sswitch_4
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4581
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setHALInstrumentation()V

    .line 4582
    goto/16 :goto_1

    .line 4545
    :sswitch_5
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4547
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4548
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4550
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 4552
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4553
    .local v2, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4554
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4555
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4556
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 4558
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 4559
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 4561
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 4565
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 4566
    nop

    .line 4556
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4562
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4569
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4571
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4573
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4574
    goto/16 :goto_1

    .line 4534
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4536
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 4537
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4538
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4539
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4540
    goto/16 :goto_1

    .line 4522
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4524
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 4525
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4526
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 4527
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4528
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4529
    goto/16 :goto_1

    .line 4511
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4513
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4514
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4515
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4516
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4517
    goto/16 :goto_1

    .line 4502
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4504
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4505
    .local v0, "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getModemStackStatus(I)V

    .line 4506
    goto/16 :goto_1

    .line 4492
    .end local v0    # "serial":I
    :sswitch_a
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4494
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4495
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4496
    .local v1, "on":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->enableModem(IZ)V

    .line 4497
    goto/16 :goto_1

    .line 4481
    .end local v0    # "serial":I
    .end local v1    # "on":Z
    :sswitch_b
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4483
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4484
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4485
    .local v1, "specifyChannels":Z
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4486
    .local v2, "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/RadioAccessSpecifier;>;"
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSystemSelectionChannels(IZLjava/util/ArrayList;)V

    .line 4487
    goto/16 :goto_1

    .line 4470
    .end local v0    # "serial":I
    .end local v1    # "specifyChannels":Z
    .end local v2    # "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/RadioAccessSpecifier;>;"
    :sswitch_c
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4472
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4473
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4474
    .local v1, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4475
    .local v2, "reason":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 4476
    goto/16 :goto_1

    .line 4452
    .end local v0    # "serial":I
    .end local v1    # "cid":I
    .end local v2    # "reason":I
    :sswitch_d
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4454
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 4455
    .local v13, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 4456
    .local v14, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v15, v0

    .line 4457
    .local v15, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v15, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4458
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 4459
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 4460
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 4461
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 4462
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 4463
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 4464
    .local v21, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4465
    goto/16 :goto_1

    .line 4437
    .end local v13    # "serial":I
    .end local v14    # "accessNetwork":I
    .end local v15    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v16    # "modemCognitive":Z
    .end local v17    # "roamingAllowed":Z
    .end local v18    # "isRoaming":Z
    .end local v19    # "reason":I
    .end local v20    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_e
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4439
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 4440
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 4441
    .local v9, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 4442
    .local v13, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 4443
    .local v14, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v15

    .line 4444
    .local v15, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 4445
    .local v16, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 4446
    .local v17, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v13

    move v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 4447
    goto/16 :goto_1

    .line 4424
    .end local v8    # "serial":I
    .end local v9    # "hysteresisMs":I
    .end local v13    # "hysteresisDlKbps":I
    .end local v14    # "hysteresisUlKbps":I
    .end local v15    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "accessNetwork":I
    :sswitch_f
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4426
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 4427
    .local v6, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 4428
    .local v7, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 4429
    .local v8, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v9

    .line 4430
    .local v9, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 4431
    .local v13, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 4432
    goto/16 :goto_1

    .line 4414
    .end local v6    # "serial":I
    .end local v7    # "hysteresisMs":I
    .end local v8    # "hysteresisDb":I
    .end local v9    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13    # "accessNetwork":I
    :sswitch_10
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4416
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4417
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4418
    .local v1, "indicationFilter":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 4419
    goto/16 :goto_1

    .line 4403
    .end local v0    # "serial":I
    .end local v1    # "indicationFilter":I
    :sswitch_11
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4405
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4406
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 4407
    .local v1, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4408
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 4409
    goto/16 :goto_1

    .line 4393
    .end local v0    # "serial":I
    .end local v1    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :sswitch_12
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4395
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4396
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4397
    .local v1, "sessionHandle":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->stopKeepalive(II)V

    .line 4398
    goto/16 :goto_1

    .line 4382
    .end local v0    # "serial":I
    .end local v1    # "sessionHandle":I
    :sswitch_13
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4384
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4385
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 4386
    .local v1, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4387
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 4388
    goto/16 :goto_1

    .line 4373
    .end local v0    # "serial":I
    .end local v1    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :sswitch_14
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4375
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4376
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->stopNetworkScan(I)V

    .line 4377
    goto/16 :goto_1

    .line 4362
    .end local v0    # "serial":I
    :sswitch_15
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4364
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4365
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 4366
    .local v1, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4367
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 4368
    goto/16 :goto_1

    .line 4352
    .end local v0    # "serial":I
    .end local v1    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :sswitch_16
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4354
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4355
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4356
    .local v1, "powerUp":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 4357
    goto/16 :goto_1

    .line 4341
    .end local v0    # "serial":I
    .end local v1    # "powerUp":I
    :sswitch_17
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4343
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4344
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 4345
    .local v1, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4346
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 4347
    goto/16 :goto_1

    .line 4333
    .end local v0    # "serial":I
    .end local v1    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :sswitch_18
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4335
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->responseAcknowledgement()V

    .line 4336
    goto/16 :goto_1

    .line 4323
    :sswitch_19
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4325
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4326
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4327
    .local v1, "powerUp":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSimCardPower(IZ)V

    .line 4328
    goto/16 :goto_1

    .line 4313
    .end local v0    # "serial":I
    .end local v1    # "powerUp":Z
    :sswitch_1a
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4315
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4316
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4317
    .local v1, "indicationFilter":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setIndicationFilter(II)V

    .line 4318
    goto/16 :goto_1

    .line 4302
    .end local v0    # "serial":I
    .end local v1    # "indicationFilter":I
    :sswitch_1b
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4304
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4305
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4306
    .local v1, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4307
    .local v2, "state":Z
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 4308
    goto/16 :goto_1

    .line 4293
    .end local v0    # "serial":I
    .end local v1    # "deviceStateType":I
    .end local v2    # "state":Z
    :sswitch_1c
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4295
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4296
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getAllowedCarriers(I)V

    .line 4297
    goto/16 :goto_1

    .line 4281
    .end local v0    # "serial":I
    :sswitch_1d
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4283
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4284
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4285
    .local v1, "allAllowed":Z
    new-instance v2, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4286
    .local v2, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4287
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 4288
    goto/16 :goto_1

    .line 4272
    .end local v0    # "serial":I
    .end local v1    # "allAllowed":Z
    .end local v2    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_1e
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4274
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4275
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getModemActivityInfo(I)V

    .line 4276
    goto/16 :goto_1

    .line 4263
    .end local v0    # "serial":I
    :sswitch_1f
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4265
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4266
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->pullLceData(I)V

    .line 4267
    goto/16 :goto_1

    .line 4254
    .end local v0    # "serial":I
    :sswitch_20
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4256
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4257
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->stopLceService(I)V

    .line 4258
    goto/16 :goto_1

    .line 4243
    .end local v0    # "serial":I
    :sswitch_21
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4245
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4246
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4247
    .local v1, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4248
    .local v2, "pullMode":Z
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startLceService(IIZ)V

    .line 4249
    goto/16 :goto_1

    .line 4232
    .end local v0    # "serial":I
    .end local v1    # "reportInterval":I
    .end local v2    # "pullMode":Z
    :sswitch_22
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4234
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4235
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4236
    .local v1, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4237
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4238
    goto/16 :goto_1

    .line 4223
    .end local v0    # "serial":I
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_23
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4225
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4226
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getRadioCapability(I)V

    .line 4227
    goto/16 :goto_1

    .line 4214
    .end local v0    # "serial":I
    :sswitch_24
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4216
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4217
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->requestShutdown(I)V

    .line 4218
    goto/16 :goto_1

    .line 4203
    .end local v0    # "serial":I
    :sswitch_25
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4205
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4206
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4207
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4208
    .local v2, "isRoaming":Z
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 4209
    goto/16 :goto_1

    .line 4191
    .end local v0    # "serial":I
    .end local v1    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v2    # "isRoaming":Z
    :sswitch_26
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4193
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4194
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4195
    .local v1, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4196
    .local v2, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4197
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 4198
    goto/16 :goto_1

    .line 4182
    .end local v0    # "serial":I
    .end local v1    # "authContext":I
    .end local v2    # "authData":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_27
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4185
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getHardwareConfig(I)V

    .line 4186
    goto/16 :goto_1

    .line 4172
    .end local v0    # "serial":I
    :sswitch_28
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4174
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4175
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4176
    .local v1, "allow":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setDataAllowed(IZ)V

    .line 4177
    goto/16 :goto_1

    .line 4161
    .end local v0    # "serial":I
    .end local v1    # "allow":Z
    :sswitch_29
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4163
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4164
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 4165
    .local v1, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4166
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 4167
    goto/16 :goto_1

    .line 4151
    .end local v0    # "serial":I
    .end local v1    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :sswitch_2a
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4153
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4154
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4155
    .local v1, "resetType":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->nvResetConfig(II)V

    .line 4156
    goto/16 :goto_1

    .line 4141
    .end local v0    # "serial":I
    .end local v1    # "resetType":I
    :sswitch_2b
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4143
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4144
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4145
    .local v1, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 4146
    goto/16 :goto_1

    .line 4130
    .end local v0    # "serial":I
    .end local v1    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_2c
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4132
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4133
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 4134
    .local v1, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4135
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 4136
    goto/16 :goto_1

    .line 4120
    .end local v0    # "serial":I
    .end local v1    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :sswitch_2d
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4123
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4124
    .local v1, "itemId":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->nvReadItem(II)V

    .line 4125
    goto/16 :goto_1

    .line 4109
    .end local v0    # "serial":I
    .end local v1    # "itemId":I
    :sswitch_2e
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4111
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4112
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4113
    .local v1, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4114
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4115
    goto/16 :goto_1

    .line 4099
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_2f
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4101
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4102
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4103
    .local v1, "channelId":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 4104
    goto/16 :goto_1

    .line 4088
    .end local v0    # "serial":I
    .end local v1    # "channelId":I
    :sswitch_30
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4090
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4091
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4092
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4093
    .local v2, "p2":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 4094
    goto/16 :goto_1

    .line 4077
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    .end local v2    # "p2":I
    :sswitch_31
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4079
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4080
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4081
    .local v1, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4082
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4083
    goto/16 :goto_1

    .line 4066
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_32
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4068
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4069
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 4070
    .local v1, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4071
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 4072
    goto/16 :goto_1

    .line 4057
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_33
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4059
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4060
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getImsRegistrationState(I)V

    .line 4061
    goto/16 :goto_1

    .line 4044
    .end local v0    # "serial":I
    :sswitch_34
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4046
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4047
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4048
    .local v1, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4049
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4050
    .local v2, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4051
    .local v3, "isRoaming":Z
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 4052
    goto/16 :goto_1

    .line 4034
    .end local v0    # "serial":I
    .end local v1    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v2    # "modemCognitive":Z
    .end local v3    # "isRoaming":Z
    :sswitch_35
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4036
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4037
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4038
    .local v1, "rate":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCellInfoListRate(II)V

    .line 4039
    goto/16 :goto_1

    .line 4025
    .end local v0    # "serial":I
    .end local v1    # "rate":I
    :sswitch_36
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4027
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4028
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCellInfoList(I)V

    .line 4029
    goto/16 :goto_1

    .line 4016
    .end local v0    # "serial":I
    :sswitch_37
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4018
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4019
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 4020
    goto/16 :goto_1

    .line 4006
    .end local v0    # "serial":I
    :sswitch_38
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4008
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4009
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4010
    .local v1, "contents":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 4011
    goto/16 :goto_1

    .line 3995
    .end local v0    # "serial":I
    .end local v1    # "contents":Ljava/lang/String;
    :sswitch_39
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3997
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3998
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3999
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4000
    .local v2, "ackPdu":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 4001
    goto/16 :goto_1

    .line 3985
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "ackPdu":Ljava/lang/String;
    :sswitch_3a
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3987
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3988
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3989
    .local v1, "challenge":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 3990
    goto/16 :goto_1

    .line 3976
    .end local v0    # "serial":I
    .end local v1    # "challenge":Ljava/lang/String;
    :sswitch_3b
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3978
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3979
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 3980
    goto/16 :goto_1

    .line 3967
    .end local v0    # "serial":I
    :sswitch_3c
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3969
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3970
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 3971
    goto/16 :goto_1

    .line 3957
    .end local v0    # "serial":I
    :sswitch_3d
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3959
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3960
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3961
    .local v1, "available":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 3962
    goto/16 :goto_1

    .line 3947
    .end local v0    # "serial":I
    .end local v1    # "available":Z
    :sswitch_3e
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3949
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3950
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3951
    .local v1, "smsc":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 3952
    goto/16 :goto_1

    .line 3938
    .end local v0    # "serial":I
    .end local v1    # "smsc":Ljava/lang/String;
    :sswitch_3f
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3940
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3941
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getSmscAddress(I)V

    .line 3942
    goto/16 :goto_1

    .line 3929
    .end local v0    # "serial":I
    :sswitch_40
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3931
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3932
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 3933
    goto/16 :goto_1

    .line 3920
    .end local v0    # "serial":I
    :sswitch_41
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3922
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3923
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getDeviceIdentity(I)V

    .line 3924
    goto/16 :goto_1

    .line 3910
    .end local v0    # "serial":I
    :sswitch_42
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3912
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3913
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3914
    .local v1, "index":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 3915
    goto/16 :goto_1

    .line 3899
    .end local v0    # "serial":I
    .end local v1    # "index":I
    :sswitch_43
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3901
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3902
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 3903
    .local v1, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3904
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 3905
    goto/16 :goto_1

    .line 3890
    .end local v0    # "serial":I
    .end local v1    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :sswitch_44
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3892
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3893
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCDMASubscription(I)V

    .line 3894
    goto/16 :goto_1

    .line 3880
    .end local v0    # "serial":I
    :sswitch_45
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3882
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3883
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3884
    .local v1, "activate":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 3885
    goto/16 :goto_1

    .line 3870
    .end local v0    # "serial":I
    .end local v1    # "activate":Z
    :sswitch_46
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3872
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3873
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3874
    .local v1, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 3875
    goto/16 :goto_1

    .line 3861
    .end local v0    # "serial":I
    .end local v1    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_47
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3864
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 3865
    goto/16 :goto_1

    .line 3851
    .end local v0    # "serial":I
    :sswitch_48
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3853
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3854
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3855
    .local v1, "activate":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 3856
    goto/16 :goto_1

    .line 3841
    .end local v0    # "serial":I
    .end local v1    # "activate":Z
    :sswitch_49
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3843
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3844
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3845
    .local v1, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 3846
    goto/16 :goto_1

    .line 3832
    .end local v0    # "serial":I
    .end local v1    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_4a
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3834
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3835
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 3836
    goto/16 :goto_1

    .line 3821
    .end local v0    # "serial":I
    :sswitch_4b
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3823
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3824
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 3825
    .local v1, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3826
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 3827
    goto/16 :goto_1

    .line 3810
    .end local v0    # "serial":I
    .end local v1    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :sswitch_4c
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3812
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3813
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3814
    .local v1, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3815
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 3816
    goto/16 :goto_1

    .line 3798
    .end local v0    # "serial":I
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_4d
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3800
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3801
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3802
    .local v1, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3803
    .local v2, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3804
    .local v3, "off":I
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 3805
    goto/16 :goto_1

    .line 3788
    .end local v0    # "serial":I
    .end local v1    # "dtmf":Ljava/lang/String;
    .end local v2    # "on":I
    .end local v3    # "off":I
    :sswitch_4e
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3790
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3791
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3792
    .local v1, "featureCode":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 3793
    goto/16 :goto_1

    .line 3779
    .end local v0    # "serial":I
    .end local v1    # "featureCode":Ljava/lang/String;
    :sswitch_4f
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3781
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3782
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 3783
    goto/16 :goto_1

    .line 3769
    .end local v0    # "serial":I
    :sswitch_50
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3771
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3772
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3773
    .local v1, "enable":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 3774
    goto/16 :goto_1

    .line 3760
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_51
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3763
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getTTYMode(I)V

    .line 3764
    goto/16 :goto_1

    .line 3750
    .end local v0    # "serial":I
    :sswitch_52
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3752
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3753
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3754
    .local v1, "mode":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setTTYMode(II)V

    .line 3755
    goto/16 :goto_1

    .line 3741
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_53
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3743
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3744
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 3745
    goto/16 :goto_1

    .line 3731
    .end local v0    # "serial":I
    :sswitch_54
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3733
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3734
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3735
    .local v1, "type":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 3736
    goto/16 :goto_1

    .line 3721
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_55
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3723
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3724
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3725
    .local v1, "cdmaSub":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 3726
    goto/16 :goto_1

    .line 3711
    .end local v0    # "serial":I
    .end local v1    # "cdmaSub":I
    :sswitch_56
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3713
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3714
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3715
    .local v1, "enable":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 3716
    goto/16 :goto_1

    .line 3702
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_57
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3704
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3705
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getNeighboringCids(I)V

    .line 3706
    goto/16 :goto_1

    .line 3693
    .end local v0    # "serial":I
    :sswitch_58
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3695
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3696
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 3697
    goto/16 :goto_1

    .line 3683
    .end local v0    # "serial":I
    :sswitch_59
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3685
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3686
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3687
    .local v1, "nwType":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 3688
    goto/16 :goto_1

    .line 3674
    .end local v0    # "serial":I
    .end local v1    # "nwType":I
    :sswitch_5a
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3676
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3677
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->explicitCallTransfer(I)V

    .line 3678
    goto/16 :goto_1

    .line 3664
    .end local v0    # "serial":I
    :sswitch_5b
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3666
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3667
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3668
    .local v1, "accept":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 3669
    goto/16 :goto_1

    .line 3654
    .end local v0    # "serial":I
    .end local v1    # "accept":Z
    :sswitch_5c
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3657
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3658
    .local v1, "commandResponse":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 3659
    goto/16 :goto_1

    .line 3644
    .end local v0    # "serial":I
    .end local v1    # "commandResponse":Ljava/lang/String;
    :sswitch_5d
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3646
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3647
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3648
    .local v1, "command":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 3649
    goto/16 :goto_1

    .line 3635
    .end local v0    # "serial":I
    .end local v1    # "command":Ljava/lang/String;
    :sswitch_5e
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3637
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3638
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getAvailableBandModes(I)V

    .line 3639
    goto/16 :goto_1

    .line 3625
    .end local v0    # "serial":I
    :sswitch_5f
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3627
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3628
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3629
    .local v1, "mode":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setBandMode(II)V

    .line 3630
    goto/16 :goto_1

    .line 3615
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_60
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3617
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3618
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3619
    .local v1, "index":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 3620
    goto/16 :goto_1

    .line 3604
    .end local v0    # "serial":I
    .end local v1    # "index":I
    :sswitch_61
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3606
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3607
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 3608
    .local v1, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3609
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 3610
    goto/16 :goto_1

    .line 3594
    .end local v0    # "serial":I
    .end local v1    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :sswitch_62
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3596
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3597
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3598
    .local v1, "enable":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 3599
    goto/16 :goto_1

    .line 3585
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_63
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3587
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3588
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getDataCallList(I)V

    .line 3589
    goto/16 :goto_1

    .line 3576
    .end local v0    # "serial":I
    :sswitch_64
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3578
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3579
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getClip(I)V

    .line 3580
    goto/16 :goto_1

    .line 3567
    .end local v0    # "serial":I
    :sswitch_65
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3569
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3570
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getMute(I)V

    .line 3571
    goto/16 :goto_1

    .line 3557
    .end local v0    # "serial":I
    :sswitch_66
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3559
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3560
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3561
    .restart local v1    # "enable":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setMute(IZ)V

    .line 3562
    goto/16 :goto_1

    .line 3547
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_67
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3549
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3550
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3551
    .local v1, "gsmIndex":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->separateConnection(II)V

    .line 3552
    goto/16 :goto_1

    .line 3538
    .end local v0    # "serial":I
    .end local v1    # "gsmIndex":I
    :sswitch_68
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3540
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3541
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getBasebandVersion(I)V

    .line 3542
    goto/16 :goto_1

    .line 3529
    .end local v0    # "serial":I
    :sswitch_69
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3531
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3532
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->stopDtmf(I)V

    .line 3533
    goto/16 :goto_1

    .line 3519
    .end local v0    # "serial":I
    :sswitch_6a
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3521
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3522
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3523
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 3524
    goto/16 :goto_1

    .line 3510
    .end local v0    # "serial":I
    .end local v1    # "s":Ljava/lang/String;
    :sswitch_6b
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3512
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3513
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getAvailableNetworks(I)V

    .line 3514
    goto/16 :goto_1

    .line 3500
    .end local v0    # "serial":I
    :sswitch_6c
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3502
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3503
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3504
    .local v1, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 3505
    goto/16 :goto_1

    .line 3491
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    :sswitch_6d
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3493
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3494
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 3495
    goto/16 :goto_1

    .line 3482
    .end local v0    # "serial":I
    :sswitch_6e
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3484
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3485
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 3486
    goto/16 :goto_1

    .line 3470
    .end local v0    # "serial":I
    :sswitch_6f
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3472
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3473
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3474
    .local v1, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3475
    .local v2, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3476
    .local v3, "newPassword":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    goto/16 :goto_1

    .line 3456
    .end local v0    # "serial":I
    .end local v1    # "facility":Ljava/lang/String;
    .end local v2    # "oldPassword":Ljava/lang/String;
    .end local v3    # "newPassword":Ljava/lang/String;
    :sswitch_70
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3458
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 3459
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3460
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 3461
    .local v9, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3462
    .local v13, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 3463
    .local v14, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3464
    .local v15, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v13

    move v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 3465
    goto/16 :goto_1

    .line 3443
    .end local v7    # "serial":I
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "lockState":Z
    .end local v13    # "password":Ljava/lang/String;
    .end local v14    # "serviceClass":I
    .end local v15    # "appId":Ljava/lang/String;
    :sswitch_71
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3445
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 3446
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3447
    .local v7, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3448
    .local v8, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 3449
    .local v9, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3450
    .local v13, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3451
    goto/16 :goto_1

    .line 3432
    .end local v6    # "serial":I
    .end local v7    # "facility":Ljava/lang/String;
    .end local v8    # "password":Ljava/lang/String;
    .end local v9    # "serviceClass":I
    .end local v13    # "appId":Ljava/lang/String;
    :sswitch_72
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3434
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3435
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3436
    .local v1, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3437
    .local v2, "reasonRadioShutDown":Z
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 3438
    goto/16 :goto_1

    .line 3423
    .end local v0    # "serial":I
    .end local v1    # "cid":I
    .end local v2    # "reasonRadioShutDown":Z
    :sswitch_73
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3425
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3426
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->acceptCall(I)V

    .line 3427
    goto/16 :goto_1

    .line 3412
    .end local v0    # "serial":I
    :sswitch_74
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3414
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3415
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3416
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3417
    .local v2, "cause":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 3418
    goto/16 :goto_1

    .line 3401
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "cause":I
    :sswitch_75
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3403
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3404
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3405
    .local v1, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3406
    .local v2, "serviceClass":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCallWaiting(IZI)V

    .line 3407
    goto/16 :goto_1

    .line 3391
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    .end local v2    # "serviceClass":I
    :sswitch_76
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3393
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3394
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3395
    .local v1, "serviceClass":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCallWaiting(II)V

    .line 3396
    goto/16 :goto_1

    .line 3380
    .end local v0    # "serial":I
    .end local v1    # "serviceClass":I
    :sswitch_77
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3382
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3383
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3384
    .local v1, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3385
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3386
    goto/16 :goto_1

    .line 3369
    .end local v0    # "serial":I
    .end local v1    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_78
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3371
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3372
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3373
    .restart local v1    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3374
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3375
    goto/16 :goto_1

    .line 3359
    .end local v0    # "serial":I
    .end local v1    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_79
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3361
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3362
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3363
    .local v1, "status":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setClir(II)V

    .line 3364
    goto/16 :goto_1

    .line 3350
    .end local v0    # "serial":I
    .end local v1    # "status":I
    :sswitch_7a
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3352
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3353
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getClir(I)V

    .line 3354
    goto/16 :goto_1

    .line 3341
    .end local v0    # "serial":I
    :sswitch_7b
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3343
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3344
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->cancelPendingUssd(I)V

    .line 3345
    goto/16 :goto_1

    .line 3331
    .end local v0    # "serial":I
    :sswitch_7c
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3333
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3334
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3335
    .local v1, "ussd":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 3336
    goto/16 :goto_1

    .line 3320
    .end local v0    # "serial":I
    .end local v1    # "ussd":Ljava/lang/String;
    :sswitch_7d
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3322
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3323
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 3324
    .local v1, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3325
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 3326
    goto/16 :goto_1

    .line 3305
    .end local v0    # "serial":I
    .end local v1    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :sswitch_7e
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3307
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 3308
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3309
    .local v8, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 3310
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3311
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v13

    .line 3312
    .local v13, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 3313
    .local v14, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    .line 3314
    .local v15, "isRoaming":Z
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move-object v3, v9

    move v4, v13

    move v5, v14

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 3315
    goto/16 :goto_1

    .line 3294
    .end local v7    # "serial":I
    .end local v8    # "radioTechnology":I
    .end local v9    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v13    # "modemCognitive":Z
    .end local v14    # "roamingAllowed":Z
    .end local v15    # "isRoaming":Z
    :sswitch_7f
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3296
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3297
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3298
    .local v1, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3299
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3300
    goto/16 :goto_1

    .line 3283
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_80
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3285
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3286
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3287
    .restart local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3288
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3289
    goto/16 :goto_1

    .line 3273
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_81
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3275
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3276
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3277
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 3278
    goto/16 :goto_1

    .line 3263
    .end local v0    # "serial":I
    .end local v1    # "s":Ljava/lang/String;
    :sswitch_82
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3265
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3266
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3267
    .local v1, "on":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setRadioPower(IZ)V

    .line 3268
    goto/16 :goto_1

    .line 3254
    .end local v0    # "serial":I
    .end local v1    # "on":Z
    :sswitch_83
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3256
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3257
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getOperator(I)V

    .line 3258
    goto/16 :goto_1

    .line 3245
    .end local v0    # "serial":I
    :sswitch_84
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3247
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3248
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getDataRegistrationState(I)V

    .line 3249
    goto/16 :goto_1

    .line 3236
    .end local v0    # "serial":I
    :sswitch_85
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3238
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3239
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 3240
    goto/16 :goto_1

    .line 3227
    .end local v0    # "serial":I
    :sswitch_86
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3229
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3230
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getSignalStrength(I)V

    .line 3231
    goto/16 :goto_1

    .line 3218
    .end local v0    # "serial":I
    :sswitch_87
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3220
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3221
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getLastCallFailCause(I)V

    .line 3222
    goto/16 :goto_1

    .line 3209
    .end local v0    # "serial":I
    :sswitch_88
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3211
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3212
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->rejectCall(I)V

    .line 3213
    goto/16 :goto_1

    .line 3200
    .end local v0    # "serial":I
    :sswitch_89
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3202
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3203
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->conference(I)V

    .line 3204
    goto/16 :goto_1

    .line 3191
    .end local v0    # "serial":I
    :sswitch_8a
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3193
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3194
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 3195
    goto/16 :goto_1

    .line 3182
    .end local v0    # "serial":I
    :sswitch_8b
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3185
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 3186
    goto/16 :goto_1

    .line 3173
    .end local v0    # "serial":I
    :sswitch_8c
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3175
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3176
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 3177
    goto/16 :goto_1

    .line 3163
    .end local v0    # "serial":I
    :sswitch_8d
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3165
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3166
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3167
    .local v1, "gsmIndex":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->hangup(II)V

    .line 3168
    goto/16 :goto_1

    .line 3153
    .end local v0    # "serial":I
    .end local v1    # "gsmIndex":I
    :sswitch_8e
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3155
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3156
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3157
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 3158
    goto/16 :goto_1

    .line 3142
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    :sswitch_8f
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3144
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3145
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 3146
    .local v1, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3147
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 3148
    goto/16 :goto_1

    .line 3133
    .end local v0    # "serial":I
    .end local v1    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :sswitch_90
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3135
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3136
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCurrentCalls(I)V

    .line 3137
    goto/16 :goto_1

    .line 3123
    .end local v0    # "serial":I
    :sswitch_91
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3125
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3126
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3127
    .local v1, "netPin":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 3128
    goto/16 :goto_1

    .line 3111
    .end local v0    # "serial":I
    .end local v1    # "netPin":Ljava/lang/String;
    :sswitch_92
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3113
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3114
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3115
    .local v1, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3116
    .local v2, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3117
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3118
    goto/16 :goto_1

    .line 3099
    .end local v0    # "serial":I
    .end local v1    # "oldPin2":Ljava/lang/String;
    .end local v2    # "newPin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_93
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3101
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3102
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3103
    .local v1, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3104
    .local v2, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3105
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3106
    goto/16 :goto_1

    .line 3087
    .end local v0    # "serial":I
    .end local v1    # "oldPin":Ljava/lang/String;
    .end local v2    # "newPin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_94
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3089
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3090
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3091
    .local v1, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3092
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3093
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3094
    goto :goto_1

    .line 3076
    .end local v0    # "serial":I
    .end local v1    # "puk2":Ljava/lang/String;
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_95
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3078
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3079
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3080
    .local v1, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3081
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3082
    goto :goto_1

    .line 3064
    .end local v0    # "serial":I
    .end local v1    # "pin2":Ljava/lang/String;
    .end local v2    # "aid":Ljava/lang/String;
    :sswitch_96
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3066
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3067
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3068
    .local v1, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3069
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3070
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3071
    goto :goto_1

    .line 3053
    .end local v0    # "serial":I
    .end local v1    # "puk":Ljava/lang/String;
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_97
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3055
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3056
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3057
    .local v1, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3058
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3059
    goto :goto_1

    .line 3044
    .end local v0    # "serial":I
    .end local v1    # "pin":Ljava/lang/String;
    .end local v2    # "aid":Ljava/lang/String;
    :sswitch_98
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3046
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3047
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getIccCardStatus(I)V

    .line 3048
    goto :goto_1

    .line 3032
    .end local v0    # "serial":I
    :sswitch_99
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3034
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v0

    .line 3035
    .local v0, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v1

    .line 3036
    .local v1, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 3037
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3038
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3039
    nop

    .line 4625
    .end local v0    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v1    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_99
        0x2 -> :sswitch_98
        0x3 -> :sswitch_97
        0x4 -> :sswitch_96
        0x5 -> :sswitch_95
        0x6 -> :sswitch_94
        0x7 -> :sswitch_93
        0x8 -> :sswitch_92
        0x9 -> :sswitch_91
        0xa -> :sswitch_90
        0xb -> :sswitch_8f
        0xc -> :sswitch_8e
        0xd -> :sswitch_8d
        0xe -> :sswitch_8c
        0xf -> :sswitch_8b
        0x10 -> :sswitch_8a
        0x11 -> :sswitch_89
        0x12 -> :sswitch_88
        0x13 -> :sswitch_87
        0x14 -> :sswitch_86
        0x15 -> :sswitch_85
        0x16 -> :sswitch_84
        0x17 -> :sswitch_83
        0x18 -> :sswitch_82
        0x19 -> :sswitch_81
        0x1a -> :sswitch_80
        0x1b -> :sswitch_7f
        0x1c -> :sswitch_7e
        0x1d -> :sswitch_7d
        0x1e -> :sswitch_7c
        0x1f -> :sswitch_7b
        0x20 -> :sswitch_7a
        0x21 -> :sswitch_79
        0x22 -> :sswitch_78
        0x23 -> :sswitch_77
        0x24 -> :sswitch_76
        0x25 -> :sswitch_75
        0x26 -> :sswitch_74
        0x27 -> :sswitch_73
        0x28 -> :sswitch_72
        0x29 -> :sswitch_71
        0x2a -> :sswitch_70
        0x2b -> :sswitch_6f
        0x2c -> :sswitch_6e
        0x2d -> :sswitch_6d
        0x2e -> :sswitch_6c
        0x2f -> :sswitch_6b
        0x30 -> :sswitch_6a
        0x31 -> :sswitch_69
        0x32 -> :sswitch_68
        0x33 -> :sswitch_67
        0x34 -> :sswitch_66
        0x35 -> :sswitch_65
        0x36 -> :sswitch_64
        0x37 -> :sswitch_63
        0x38 -> :sswitch_62
        0x39 -> :sswitch_61
        0x3a -> :sswitch_60
        0x3b -> :sswitch_5f
        0x3c -> :sswitch_5e
        0x3d -> :sswitch_5d
        0x3e -> :sswitch_5c
        0x3f -> :sswitch_5b
        0x40 -> :sswitch_5a
        0x41 -> :sswitch_59
        0x42 -> :sswitch_58
        0x43 -> :sswitch_57
        0x44 -> :sswitch_56
        0x45 -> :sswitch_55
        0x46 -> :sswitch_54
        0x47 -> :sswitch_53
        0x48 -> :sswitch_52
        0x49 -> :sswitch_51
        0x4a -> :sswitch_50
        0x4b -> :sswitch_4f
        0x4c -> :sswitch_4e
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4c
        0x4f -> :sswitch_4b
        0x50 -> :sswitch_4a
        0x51 -> :sswitch_49
        0x52 -> :sswitch_48
        0x53 -> :sswitch_47
        0x54 -> :sswitch_46
        0x55 -> :sswitch_45
        0x56 -> :sswitch_44
        0x57 -> :sswitch_43
        0x58 -> :sswitch_42
        0x59 -> :sswitch_41
        0x5a -> :sswitch_40
        0x5b -> :sswitch_3f
        0x5c -> :sswitch_3e
        0x5d -> :sswitch_3d
        0x5e -> :sswitch_3c
        0x5f -> :sswitch_3b
        0x60 -> :sswitch_3a
        0x61 -> :sswitch_39
        0x62 -> :sswitch_38
        0x63 -> :sswitch_37
        0x64 -> :sswitch_36
        0x65 -> :sswitch_35
        0x66 -> :sswitch_34
        0x67 -> :sswitch_33
        0x68 -> :sswitch_32
        0x69 -> :sswitch_31
        0x6a -> :sswitch_30
        0x6b -> :sswitch_2f
        0x6c -> :sswitch_2e
        0x6d -> :sswitch_2d
        0x6e -> :sswitch_2c
        0x6f -> :sswitch_2b
        0x70 -> :sswitch_2a
        0x71 -> :sswitch_29
        0x72 -> :sswitch_28
        0x73 -> :sswitch_27
        0x74 -> :sswitch_26
        0x75 -> :sswitch_25
        0x76 -> :sswitch_24
        0x77 -> :sswitch_23
        0x78 -> :sswitch_22
        0x79 -> :sswitch_21
        0x7a -> :sswitch_20
        0x7b -> :sswitch_1f
        0x7c -> :sswitch_1e
        0x7d -> :sswitch_1d
        0x7e -> :sswitch_1c
        0x7f -> :sswitch_1b
        0x80 -> :sswitch_1a
        0x81 -> :sswitch_19
        0x82 -> :sswitch_18
        0x83 -> :sswitch_17
        0x84 -> :sswitch_16
        0x85 -> :sswitch_15
        0x86 -> :sswitch_14
        0x87 -> :sswitch_13
        0x88 -> :sswitch_12
        0x89 -> :sswitch_11
        0x8a -> :sswitch_10
        0x8b -> :sswitch_f
        0x8c -> :sswitch_e
        0x8d -> :sswitch_d
        0x8e -> :sswitch_c
        0x8f -> :sswitch_b
        0x90 -> :sswitch_a
        0x91 -> :sswitch_9
        0xf43484e -> :sswitch_8
        0xf444247 -> :sswitch_7
        0xf445343 -> :sswitch_6
        0xf485348 -> :sswitch_5
        0xf494e54 -> :sswitch_4
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 2983
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 3011
    const-string v0, "android.hardware.radio@1.3::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3012
    return-object p0

    .line 3014
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3018
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 3019
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2973
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 3005
    const/4 v0, 0x1

    return v0
.end method
