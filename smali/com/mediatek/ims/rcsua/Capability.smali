.class public Lcom/mediatek/ims/rcsua/Capability;
.super Ljava/lang/Object;
.source "Capability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/ims/rcsua/Capability;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final IARI_CHATBOT:Ljava/lang/String;

.field private final IARI_CHATBOT_SA:Ljava/lang/String;

.field private final IARI_FT_HTTP:Ljava/lang/String;

.field private final IARI_GEO_PULL:Ljava/lang/String;

.field private final IARI_GEO_PULLFT:Ljava/lang/String;

.field private final IARI_GEO_PUSH:Ljava/lang/String;

.field private final IARI_GEO_SMS:Ljava/lang/String;

.field private final ICSI_CPM_FILETRANSFER:Ljava/lang/String;

.field private final ICSI_CPM_LARGE_MSG:Ljava/lang/String;

.field private final ICSI_CPM_MSG:Ljava/lang/String;

.field private final ICSI_CPM_SESSION:Ljava/lang/String;

.field private final SVC_3GPP_IARI:Ljava/lang/String;

.field private final SVC_3GPP_ICSI:Ljava/lang/String;

.field private final SVC_GSMA_BOTVERSION:Ljava/lang/String;

.field private final SVC_GSMA_CALLCOMPOSER:Ljava/lang/String;

.field private final SVC_IMDN_AGGREGATION:Ljava/lang/String;

.field private features:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/ims/rcsua/Capability$TagValueList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability$1;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/Capability$1;-><init>()V

    sput-object v0, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    .line 543
    const-string v0, "+g.3gpp.icsi-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_ICSI:Ljava/lang/String;

    .line 544
    const-string v0, "+g.3gpp.iari-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_IARI:Ljava/lang/String;

    .line 545
    const-string v0, "imdn-aggregation"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_IMDN_AGGREGATION:Ljava/lang/String;

    .line 546
    const-string v0, "+g.gsma.callcomposer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_CALLCOMPOSER:Ljava/lang/String;

    .line 547
    const-string v0, "+g.gsma.rcs.botversion"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_BOTVERSION:Ljava/lang/String;

    .line 549
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_MSG:Ljava/lang/String;

    .line 550
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_LARGE_MSG:Ljava/lang/String;

    .line 551
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_SESSION:Ljava/lang/String;

    .line 552
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_FILETRANSFER:Ljava/lang/String;

    .line 554
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PUSH:Ljava/lang/String;

    .line 555
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULL:Ljava/lang/String;

    .line 556
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULLFT:Ljava/lang/String;

    .line 557
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_SMS:Ljava/lang/String;

    .line 558
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_FT_HTTP:Ljava/lang/String;

    .line 559
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT:Ljava/lang/String;

    .line 560
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT_SA:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcsua/Capability;->initialize(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "features"    # J

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    .line 543
    const-string v0, "+g.3gpp.icsi-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_ICSI:Ljava/lang/String;

    .line 544
    const-string v0, "+g.3gpp.iari-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_IARI:Ljava/lang/String;

    .line 545
    const-string v0, "imdn-aggregation"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_IMDN_AGGREGATION:Ljava/lang/String;

    .line 546
    const-string v0, "+g.gsma.callcomposer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_CALLCOMPOSER:Ljava/lang/String;

    .line 547
    const-string v0, "+g.gsma.rcs.botversion"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_BOTVERSION:Ljava/lang/String;

    .line 549
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_MSG:Ljava/lang/String;

    .line 550
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_LARGE_MSG:Ljava/lang/String;

    .line 551
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_SESSION:Ljava/lang/String;

    .line 552
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_FILETRANSFER:Ljava/lang/String;

    .line 554
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PUSH:Ljava/lang/String;

    .line 555
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULL:Ljava/lang/String;

    .line 556
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULLFT:Ljava/lang/String;

    .line 557
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_SMS:Ljava/lang/String;

    .line 558
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_FT_HTTP:Ljava/lang/String;

    .line 559
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT:Ljava/lang/String;

    .line 560
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT_SA:Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcsua/Capability;->initialize(J)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "features"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    .line 543
    const-string v0, "+g.3gpp.icsi-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_ICSI:Ljava/lang/String;

    .line 544
    const-string v0, "+g.3gpp.iari-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_IARI:Ljava/lang/String;

    .line 545
    const-string v0, "imdn-aggregation"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_IMDN_AGGREGATION:Ljava/lang/String;

    .line 546
    const-string v0, "+g.gsma.callcomposer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_CALLCOMPOSER:Ljava/lang/String;

    .line 547
    const-string v0, "+g.gsma.rcs.botversion"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_BOTVERSION:Ljava/lang/String;

    .line 549
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_MSG:Ljava/lang/String;

    .line 550
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_LARGE_MSG:Ljava/lang/String;

    .line 551
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_SESSION:Ljava/lang/String;

    .line 552
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_FILETRANSFER:Ljava/lang/String;

    .line 554
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PUSH:Ljava/lang/String;

    .line 555
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULL:Ljava/lang/String;

    .line 556
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULLFT:Ljava/lang/String;

    .line 557
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_SMS:Ljava/lang/String;

    .line 558
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_FT_HTTP:Ljava/lang/String;

    .line 559
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT:Ljava/lang/String;

    .line 560
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT_SA:Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcsua/Capability;->initialize(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private addFeature(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 5
    .param p1, "capability"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 385
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 386
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 387
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 388
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 390
    .local v3, "value":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    iget-object v4, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    iget-object v4, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v4, v3}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->add(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)V

    goto :goto_1

    .line 393
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    :goto_1
    goto :goto_0

    .line 397
    :cond_1
    return-void
.end method

.method private initialize(J)V
    .locals 11
    .param p1, "features"    # J

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+g.3gpp.icsi-ref=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, "ICSI":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+g.3gpp.iari-ref=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, "IARI":Ljava/lang/StringBuilder;
    const-wide/16 v2, 0x1

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 294
    const-string v2, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_0
    const-wide/16 v2, 0x2

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 296
    const-string v2, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_1
    const-wide/16 v2, 0x4

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 298
    const-string v2, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_2
    const-wide/16 v2, 0x8

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 300
    const-string v2, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_3
    const-wide/16 v2, 0x10

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 302
    const-string v2, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_4
    const-wide/16 v2, 0x20

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 304
    const-string v2, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_5
    const-wide/16 v2, 0x40

    and-long v6, p1, v2

    cmp-long v6, v6, v4

    if-lez v6, :cond_6

    .line 306
    const-string v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_6
    const-wide/16 v6, 0x100

    and-long/2addr v6, p1

    cmp-long v6, v6, v4

    if-lez v6, :cond_7

    .line 308
    const-string v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_7
    const-wide/16 v6, 0x200

    and-long/2addr v6, p1

    cmp-long v6, v6, v4

    if-lez v6, :cond_8

    .line 310
    const-string v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_8
    const-wide/16 v6, 0x800

    and-long/2addr v6, p1

    cmp-long v6, v6, v4

    if-lez v6, :cond_9

    .line 312
    const-string v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_9
    const-wide/16 v6, 0x1000

    and-long/2addr v6, p1

    cmp-long v6, v6, v4

    if-lez v6, :cond_a

    .line 314
    const-string v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x22

    const/16 v9, 0x2c

    const/16 v10, 0x3b

    if-ne v7, v9, :cond_b

    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 319
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_c

    .line 323
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 324
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    :cond_c
    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_d

    .line 329
    const-string v2, "imdn-aggregation"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    :cond_d
    const-wide/16 v2, 0x400

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_e

    .line 334
    const-string v2, "+g.gsma.callcomposer"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    :cond_e
    const-wide/16 v2, 0x2000

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_f

    .line 339
    const-string v2, "+g.gsma.rcs.botversion"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v2, "="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string v2, "\"#1\""

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string v2, ";"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_10

    .line 345
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_10

    .line 346
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 348
    :cond_10
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/rcsua/Capability;->initialize(Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 11
    .param p1, "features"    # Ljava/lang/String;

    .line 352
    if-nez p1, :cond_0

    .line 353
    const-string p1, ""

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 357
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 358
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 359
    .local v4, "feature":Ljava/lang/String;
    const-string v5, "="

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "nameValue":[Ljava/lang/String;
    array-length v7, v5

    if-ge v7, v6, :cond_1

    .line 361
    iget-object v6, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    new-instance v7, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    const-string v8, ""

    invoke-direct {v7, v8}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 363
    :cond_1
    aget-object v6, v5, v2

    .line 364
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v8, v5, v7

    .line 367
    .local v8, "value":Ljava/lang/String;
    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-nez v10, :cond_3

    .line 368
    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v7

    if-ne v9, v10, :cond_3

    .line 372
    iget-object v7, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 374
    iget-object v7, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v7, v8}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 376
    :cond_2
    iget-object v7, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    new-instance v9, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-direct {v9, v8}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .end local v4    # "feature":Ljava/lang/String;
    .end local v5    # "nameValue":[Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 369
    .restart local v4    # "feature":Ljava/lang/String;
    .restart local v5    # "nameValue":[Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid feature tag value list format"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    .end local v4    # "feature":Ljava/lang/String;
    .end local v5    # "nameValue":[Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private removeFeature(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 5
    .param p1, "capability"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 401
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 402
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 403
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 404
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 406
    .local v3, "tags":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    iget-object v4, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 407
    iget-object v4, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v4, v3}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->remove(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)V

    .line 409
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "tags":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    :cond_0
    goto :goto_0

    .line 411
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/ims/rcsua/Capability;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 0
    .param p1, "features"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcsua/Capability;->addFeature(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 67
    return-object p0
.end method

.method public add(Ljava/lang/String;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 1
    .param p1, "features"    # Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcsua/Capability;->addFeature(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 77
    return-object p0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 6
    .param p1, "feature"    # Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "capability":Lcom/mediatek/ims/rcsua/Capability;
    iget-object v1, v0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 98
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 99
    return v4

    .line 100
    :cond_0
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 101
    .local v3, "value":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v3, v5}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->contains(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 102
    return v4

    .line 103
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    .end local v3    # "value":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    :cond_1
    goto :goto_0

    .line 105
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public describeContents()I
    .locals 1

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 176
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 177
    return v0

    .line 179
    :cond_0
    instance-of v1, p1, Lcom/mediatek/ims/rcsua/Capability;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 180
    move-object v1, p1

    check-cast v1, Lcom/mediatek/ims/rcsua/Capability;

    .line 181
    .local v1, "other":Lcom/mediatek/ims/rcsua/Capability;
    iget-object v3, v1, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 184
    .end local v1    # "other":Lcom/mediatek/ims/rcsua/Capability;
    :cond_2
    return v2
.end method

.method public get(Ljava/lang/String;)Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Lcom/mediatek/ims/rcsua/Capability;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 0
    .param p1, "features"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 71
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcsua/Capability;->removeFeature(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 72
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 1
    .param p1, "features"    # Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcsua/Capability;->removeFeature(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 82
    return-object p0
.end method

.method public toFeatureTags()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 111
    .local v0, "result":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 113
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v4}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 114
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v4}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->getTagValues()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 115
    .local v5, "tag":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v6, "=\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v6, "\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v5    # "tag":Ljava/lang/String;
    goto :goto_1

    :cond_0
    goto :goto_2

    .line 122
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    :goto_2
    goto :goto_0

    .line 126
    :cond_2
    return-object v0
.end method

.method public toNumeric()J
    .locals 10

    .line 193
    const-wide/16 v0, 0x0

    .line 195
    .local v0, "result":J
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 196
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 197
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 198
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 200
    .local v5, "tags":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x1

    sparse-switch v7, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v7, "+g.3gpp.iari-ref"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v6, v8

    goto :goto_1

    :sswitch_1
    const-string v7, "+g.gsma.callcomposer"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_2
    const-string v7, "+g.gsma.rcs.botversion"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_3
    const-string v7, "imdn-aggregation"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_4
    const-string v7, "+g.3gpp.icsi-ref"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_7

    .line 255
    :pswitch_0
    invoke-virtual {v5}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->size()I

    move-result v6

    if-ne v6, v8, :cond_f

    .line 256
    invoke-static {v5}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->access$000(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)Ljava/util/LinkedHashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 257
    .local v7, "value":Ljava/lang/String;
    const-string v8, "#1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 258
    const-wide/16 v8, 0x2000

    or-long/2addr v0, v8

    .line 259
    goto/16 :goto_7

    .line 261
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 249
    :pswitch_1
    const-wide/16 v6, 0x400

    or-long/2addr v0, v6

    .line 250
    goto/16 :goto_7

    .line 245
    :pswitch_2
    const-wide/16 v6, 0x80

    or-long/2addr v0, v6

    .line 246
    goto/16 :goto_7

    .line 219
    :pswitch_3
    invoke-static {v5}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->access$000(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)Ljava/util/LinkedHashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 220
    .restart local v7    # "value":Ljava/lang/String;
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 221
    const-wide/16 v8, 0x10

    or-long/2addr v0, v8

    goto :goto_4

    .line 223
    :cond_2
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 224
    const-wide/16 v8, 0x20

    or-long/2addr v0, v8

    goto :goto_4

    .line 226
    :cond_3
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 227
    const-wide/16 v8, 0x40

    or-long/2addr v0, v8

    goto :goto_4

    .line 229
    :cond_4
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 230
    const-wide/16 v8, 0x100

    or-long/2addr v0, v8

    goto :goto_4

    .line 232
    :cond_5
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 233
    const-wide/16 v8, 0x200

    or-long/2addr v0, v8

    goto :goto_4

    .line 235
    :cond_6
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 236
    const-wide/16 v8, 0x800

    or-long/2addr v0, v8

    goto :goto_4

    .line 238
    :cond_7
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 239
    const-wide/16 v8, 0x1000

    or-long/2addr v0, v8

    .line 241
    .end local v7    # "value":Ljava/lang/String;
    :cond_8
    :goto_4
    goto :goto_3

    .line 242
    :cond_9
    goto :goto_7

    .line 202
    :pswitch_4
    invoke-static {v5}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->access$000(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)Ljava/util/LinkedHashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 203
    .restart local v7    # "value":Ljava/lang/String;
    const-string v8, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 204
    const-wide/16 v8, 0x4

    or-long/2addr v0, v8

    goto :goto_6

    .line 206
    :cond_a
    const-string v8, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 207
    const-wide/16 v8, 0x1

    or-long/2addr v0, v8

    goto :goto_6

    .line 209
    :cond_b
    const-string v8, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 210
    const-wide/16 v8, 0x8

    or-long/2addr v0, v8

    goto :goto_6

    .line 212
    :cond_c
    const-string v8, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 213
    const-wide/16 v8, 0x2

    or-long/2addr v0, v8

    .line 215
    .end local v7    # "value":Ljava/lang/String;
    :cond_d
    :goto_6
    goto :goto_5

    .line 216
    :cond_e
    nop

    .line 265
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "tags":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    :cond_f
    :goto_7
    goto/16 :goto_0

    .line 268
    :cond_10
    return-wide v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3fced582 -> :sswitch_4
        0xa928443 -> :sswitch_3
        0x484cd319 -> :sswitch_2
        0x524ec15a -> :sswitch_1
        0x54afdb5d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 157
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 158
    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v3}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 164
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v3}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "value":Ljava/lang/String;
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Ljava/lang/String;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 0
    .param p1, "features"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcsua/Capability;->initialize(Ljava/lang/String;)V

    .line 87
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 131
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/Capability;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    return-void
.end method
