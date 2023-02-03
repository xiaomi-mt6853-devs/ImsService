.class Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$4;
.super Ljava/lang/Object;
.source "MtkRcsCapabilityExchange.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    .line 330
    iput-object p1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$4;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 333
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$4;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    invoke-static {p2}, Lcom/mediatek/presence/service/IMtkCoreServiceWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->access$302(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;)Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;

    .line 334
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$4;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->access$402(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;Z)Z

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$4;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    invoke-static {v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->access$500(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;)Lcom/mediatek/presence/service/api/IMtkPresenceService;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$4;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    iget-object v2, v2, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mtkCapabilityEventListener:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    invoke-interface {v0, v1, v2}, Lcom/mediatek/presence/service/api/IMtkPresenceService;->setRcsCapabilityExchangeAvailable(ZLandroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote Exception found :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkRcsCapabilityExchange"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected entry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRcsCapabilityExchange"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$4;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    invoke-static {v2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->access$500(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;)Lcom/mediatek/presence/service/api/IMtkPresenceService;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$4;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    iget-object v3, v3, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->mtkCapabilityEventListener:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    invoke-interface {v2, v0, v3}, Lcom/mediatek/presence/service/api/IMtkPresenceService;->setRcsCapabilityExchangeAvailable(ZLandroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    goto :goto_0

    .line 346
    :catch_0
    move-exception v2

    .line 347
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Exception found :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$4;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->access$302(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;)Lcom/mediatek/presence/service/IMtkCoreServiceWrapper;

    .line 350
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$4;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    invoke-static {v1, v2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->access$602(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;Lcom/mediatek/presence/service/api/IMtkPresenceService;)Lcom/mediatek/presence/service/api/IMtkPresenceService;

    .line 351
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$4;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    invoke-static {v1, v2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->access$702(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;Lcom/android/ims/internal/uce/options/IOptionsService;)Lcom/android/ims/internal/uce/options/IOptionsService;

    .line 352
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange$4;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;

    invoke-static {v1, v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;->access$402(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchange;Z)Z

    .line 353
    return-void
.end method
