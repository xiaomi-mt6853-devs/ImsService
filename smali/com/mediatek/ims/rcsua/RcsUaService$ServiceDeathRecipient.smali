.class Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;
.super Ljava/lang/Object;
.source "RcsUaService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/RcsUaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcsua/RcsUaService;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 0

    .line 1146
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/RcsUaService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p2, "x1"    # Lcom/mediatek/ims/rcsua/RcsUaService$1;

    .line 1146
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1149
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$402(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/service/IRcsUaService;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 1150
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$800(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1151
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$100(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1152
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$902(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    .line 1153
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$700(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    .line 1154
    return-void
.end method
