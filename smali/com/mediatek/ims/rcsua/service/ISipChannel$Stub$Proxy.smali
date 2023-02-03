.class Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISipChannel.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/ISipChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/ims/rcsua/service/ISipChannel;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 164
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public close(Lcom/mediatek/ims/rcsua/service/RcsUaException;)V
    .locals 5
    .param p1, "e"    # Lcom/mediatek/ims/rcsua/service/RcsUaException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 229
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 231
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.ISipChannel"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 233
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 234
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipChannel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 235
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipChannel;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->close(Lcom/mediatek/ims/rcsua/service/RcsUaException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 236
    return-void

    .line 239
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    invoke-virtual {p1, v1}, Lcom/mediatek/ims/rcsua/service/RcsUaException;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    .end local v2    # "_status":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    nop

    .line 248
    return-void

    .line 245
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 171
    const-string v0, "com.mediatek.ims.rcsua.service.ISipChannel"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 252
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 255
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.ISipChannel"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 257
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 258
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipChannel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 259
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipChannel;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->isAvailable()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 259
    return v3

    .line 262
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 266
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 268
    nop

    .line 269
    return v2

    .line 266
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 268
    throw v2
.end method

.method public readConfiguration()Lcom/mediatek/ims/rcsua/Configuration;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 274
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 277
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.ISipChannel"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 278
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 279
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 280
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipChannel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 281
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipChannel;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->readConfiguration()Lcom/mediatek/ims/rcsua/Configuration;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 281
    return-object v3

    .line 284
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 285
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 286
    sget-object v3, Lcom/mediatek/ims/rcsua/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Configuration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/mediatek/ims/rcsua/Configuration;
    goto :goto_0

    .line 289
    .end local v3    # "_result":Lcom/mediatek/ims/rcsua/Configuration;
    :cond_1
    const/4 v3, 0x0

    .line 293
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/mediatek/ims/rcsua/Configuration;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    nop

    .line 296
    return-object v3

    .line 293
    .end local v3    # "_result":Lcom/mediatek/ims/rcsua/Configuration;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    throw v2
.end method

.method public sendMessage([BLcom/mediatek/ims/rcsua/service/RcsUaException;)I
    .locals 5
    .param p1, "message"    # [B
    .param p2, "e"    # Lcom/mediatek/ims/rcsua/service/RcsUaException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 176
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 179
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.ISipChannel"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 181
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 182
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 183
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipChannel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 184
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipChannel;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->sendMessage([BLcom/mediatek/ims/rcsua/service/RcsUaException;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 184
    return v3

    .line 187
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 189
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    invoke-virtual {p2, v1}, Lcom/mediatek/ims/rcsua/service/RcsUaException;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    .end local v2    # "_status":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 196
    nop

    .line 197
    return v3

    .line 194
    .end local v3    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 196
    throw v2
.end method

.method public sendMessageAosp([BLcom/mediatek/ims/rcsua/service/RcsUaException;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)I
    .locals 5
    .param p1, "message"    # [B
    .param p2, "e"    # Lcom/mediatek/ims/rcsua/service/RcsUaException;
    .param p3, "mMessageCallback"    # Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 202
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.ISipChannel"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 207
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 208
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 209
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 210
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipChannel;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 211
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipChannel;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->sendMessageAosp([BLcom/mediatek/ims/rcsua/service/RcsUaException;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 211
    return v3

    .line 214
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 216
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 217
    invoke-virtual {p2, v1}, Lcom/mediatek/ims/rcsua/service/RcsUaException;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .end local v2    # "_status":Z
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 223
    nop

    .line 224
    return v3

    .line 221
    .end local v3    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 223
    throw v2
.end method
