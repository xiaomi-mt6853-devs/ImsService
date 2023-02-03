.class Lcom/mediatek/ims/rcse/MtkSipTransport$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MtkSipTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcse/MtkSipTransport;->registerNetworkCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcse/MtkSipTransport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;

    .line 245
    iput-object p1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifiCallback onAvailable is called: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSipTransport"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 251
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v0, p1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$002(Lcom/mediatek/ims/rcse/MtkSipTransport;Landroid/net/Network;)Landroid/net/Network;

    .line 252
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$200(Lcom/mediatek/ims/rcse/MtkSipTransport;)Landroid/net/ConnectivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v3}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$000(Lcom/mediatek/ims/rcse/MtkSipTransport;)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$102(Lcom/mediatek/ims/rcse/MtkSipTransport;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiCallback onAvailable mLinkProp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v2}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$100(Lcom/mediatek/ims/rcse/MtkSipTransport;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$100(Lcom/mediatek/ims/rcse/MtkSipTransport;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$400(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$302(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiCallback onAvailable ipv6localAddress: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v2}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$300(Lcom/mediatek/ims/rcse/MtkSipTransport;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$100(Lcom/mediatek/ims/rcse/MtkSipTransport;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$600(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$502(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiCallback onAvailable ipv4localAddress: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v2}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$500(Lcom/mediatek/ims/rcse/MtkSipTransport;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 262
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifiCallback onLost is called: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSipTransport"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method
