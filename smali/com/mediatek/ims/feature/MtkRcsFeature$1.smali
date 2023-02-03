.class Lcom/mediatek/ims/feature/MtkRcsFeature$1;
.super Ljava/lang/Object;
.source "MtkRcsFeature.java"

# interfaces
.implements Lcom/mediatek/ims/ImsService$IMtkRcsFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/feature/MtkRcsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/feature/MtkRcsFeature;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/feature/MtkRcsFeature;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/feature/MtkRcsFeature;

    .line 122
    iput-object p1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkRcsFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyCapabilitiesChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .locals 2
    .param p1, "c"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCapabilitiesStatusChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRcsFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkRcsFeature;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/feature/MtkRcsFeature;->onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 134
    return-void
.end method

.method public notifyContextChanged(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkRcsFeature;

    invoke-static {v0, p1}, Lcom/mediatek/ims/feature/MtkRcsFeature;->access$002(Lcom/mediatek/ims/feature/MtkRcsFeature;Landroid/content/Context;)Landroid/content/Context;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set context to this "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkRcsFeature;

    invoke-static {v1}, Lcom/mediatek/ims/feature/MtkRcsFeature;->access$000(Lcom/mediatek/ims/feature/MtkRcsFeature;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRcsFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method
