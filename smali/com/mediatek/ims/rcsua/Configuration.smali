.class public Lcom/mediatek/ims/rcsua/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/Configuration$IpVersion;,
        Lcom/mediatek/ims/rcsua/Configuration$Transport;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/ims/rcsua/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final IPv4:I = 0x0

.field public static final IPv6:I = 0x1

.field public static final SCTP:I = 0x8

.field public static final TCP:I = 0x1

.field public static final TLS:I = 0x4

.field public static final UDP:I = 0x2


# instance fields
.field private IMPI:Ljava/lang/String;

.field private IMPU:Ljava/lang/String;

.field private digitVlineNumber:I

.field private homeDomain:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private instanceId:Ljava/lang/String;

.field private ipVersion:I

.field private localAddress:Ljava/lang/String;

.field private localPort:I

.field private pAccessNetworkInfo:Ljava/lang/String;

.field private pAssociatedUri:Ljava/lang/String;

.field private pIdentifier:Ljava/lang/String;

.field private pLastAccessNetworkInfo:Ljava/lang/String;

.field private pPreferredAssociation:Ljava/lang/String;

.field private portS:I

.field private protocol:I

.field private proxyAddress:Ljava/lang/String;

.field private proxyPort:I

.field private publicGruu:Ljava/lang/String;

.field private regRcsFeatureTags:I

.field private security_verify:Ljava/lang/String;

.field private serviceRoute:Ljava/lang/String;

.field private tempGruu:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;

.field private viaPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 158
    new-instance v0, Lcom/mediatek/ims/rcsua/Configuration$1;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/Configuration$1;-><init>()V

    sput-object v0, Lcom/mediatek/ims/rcsua/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/Configuration;->init()V

    .line 100
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->localAddress:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->localPort:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->proxyAddress:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->proxyPort:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->protocol:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->ipVersion:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->IMPU:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->IMPI:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->homeDomain:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->userAgent:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->portS:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->viaPort:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->security_verify:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pAssociatedUri:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->instanceId:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->serviceRoute:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pAccessNetworkInfo:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pLastAccessNetworkInfo:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->publicGruu:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->tempGruu:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->digitVlineNumber:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pIdentifier:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pPreferredAssociation:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->regRcsFeatureTags:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->imei:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ims/rcsua/Configuration;)V
    .locals 1
    .param p1, "other"    # Lcom/mediatek/ims/rcsua/Configuration;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->localAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->localAddress:Ljava/lang/String;

    .line 104
    iget v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->localPort:I

    iput v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->localPort:I

    .line 105
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->proxyAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->proxyAddress:Ljava/lang/String;

    .line 106
    iget v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->proxyPort:I

    iput v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->proxyPort:I

    .line 107
    iget v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->protocol:I

    iput v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->protocol:I

    .line 108
    iget v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->ipVersion:I

    iput v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->ipVersion:I

    .line 109
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->IMPU:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->IMPU:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->IMPI:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->IMPI:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->homeDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->homeDomain:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->userAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->userAgent:Ljava/lang/String;

    .line 113
    iget v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->portS:I

    iput v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->portS:I

    .line 114
    iget v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->viaPort:I

    iput v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->viaPort:I

    .line 115
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->security_verify:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->security_verify:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->pAssociatedUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pAssociatedUri:Ljava/lang/String;

    .line 117
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->instanceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->instanceId:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->serviceRoute:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->serviceRoute:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->pAccessNetworkInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pAccessNetworkInfo:Ljava/lang/String;

    .line 120
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->pLastAccessNetworkInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pLastAccessNetworkInfo:Ljava/lang/String;

    .line 121
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->publicGruu:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->publicGruu:Ljava/lang/String;

    .line 122
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->tempGruu:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->tempGruu:Ljava/lang/String;

    .line 123
    iget v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->digitVlineNumber:I

    iput v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->digitVlineNumber:I

    .line 124
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->pIdentifier:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pIdentifier:Ljava/lang/String;

    .line 125
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->pPreferredAssociation:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pPreferredAssociation:Ljava/lang/String;

    .line 126
    iget v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->regRcsFeatureTags:I

    iput v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->regRcsFeatureTags:I

    .line 127
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Configuration;->imei:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->imei:Ljava/lang/String;

    .line 128
    return-void
.end method

.method private init()V
    .locals 3

    .line 491
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->localAddress:Ljava/lang/String;

    .line 492
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/rcsua/Configuration;->localPort:I

    .line 493
    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->proxyAddress:Ljava/lang/String;

    .line 494
    iput v1, p0, Lcom/mediatek/ims/rcsua/Configuration;->proxyPort:I

    .line 495
    const/4 v2, 0x2

    iput v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->protocol:I

    .line 496
    iput v1, p0, Lcom/mediatek/ims/rcsua/Configuration;->ipVersion:I

    .line 497
    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->IMPU:Ljava/lang/String;

    .line 498
    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->IMPI:Ljava/lang/String;

    .line 499
    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->homeDomain:Ljava/lang/String;

    .line 500
    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->userAgent:Ljava/lang/String;

    .line 501
    iput v1, p0, Lcom/mediatek/ims/rcsua/Configuration;->portS:I

    .line 502
    iput v1, p0, Lcom/mediatek/ims/rcsua/Configuration;->viaPort:I

    .line 503
    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->security_verify:Ljava/lang/String;

    .line 504
    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pAssociatedUri:Ljava/lang/String;

    .line 505
    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->instanceId:Ljava/lang/String;

    .line 506
    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->serviceRoute:Ljava/lang/String;

    .line 507
    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pAccessNetworkInfo:Ljava/lang/String;

    .line 508
    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pLastAccessNetworkInfo:Ljava/lang/String;

    .line 509
    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->publicGruu:Ljava/lang/String;

    .line 510
    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->tempGruu:Ljava/lang/String;

    .line 511
    iput v1, p0, Lcom/mediatek/ims/rcsua/Configuration;->digitVlineNumber:I

    .line 512
    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pIdentifier:Ljava/lang/String;

    .line 513
    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pPreferredAssociation:Ljava/lang/String;

    .line 514
    iput v1, p0, Lcom/mediatek/ims/rcsua/Configuration;->regRcsFeatureTags:I

    .line 515
    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->imei:Ljava/lang/String;

    .line 516
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public getDigitVlineNumber()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->digitVlineNumber:I

    return v0
.end method

.method public getHomeDomain()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->homeDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getIMPI()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->IMPI:Ljava/lang/String;

    return-object v0
.end method

.method public getIMPU()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->IMPU:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getIpVersion()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->ipVersion:I

    return v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->localAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->localPort:I

    return v0
.end method

.method public getPAccessNetworkInfo()Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pAccessNetworkInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPAssociatedUri()[Ljava/lang/String;
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pAssociatedUri:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPAssociatedUriStr()Ljava/lang/String;
    .locals 2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPAssociatedUri pAssociatedUri.split[0] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcsua/Configuration;->pAssociatedUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkConfiguration"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pAssociatedUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPIdentifier()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPLastAccessNetworkInfo()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pLastAccessNetworkInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPPreferredAssociation()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pPreferredAssociation:Ljava/lang/String;

    return-object v0
.end method

.method public getPortS()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->portS:I

    return v0
.end method

.method public getProtocol()I
    .locals 1

    .line 264
    iget v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->protocol:I

    return v0
.end method

.method public getProxyAddress()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->proxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->proxyPort:I

    return v0
.end method

.method public getPublicGruu()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->publicGruu:Ljava/lang/String;

    return-object v0
.end method

.method public getRegRcsFeatureTags()I
    .locals 1

    .line 349
    iget v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->regRcsFeatureTags:I

    return v0
.end method

.method public getSecurityVerify()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->security_verify:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceRoute()[Ljava/lang/String;
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->serviceRoute:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceRouteStr()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->serviceRoute:Ljava/lang/String;

    return-object v0
.end method

.method public getTempGruu()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->tempGruu:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getViaPort()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->viaPort:I

    return v0
.end method

.method public reset()V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/Configuration;->init()V

    .line 172
    return-void
.end method

.method public setDigitVlineNumber(I)V
    .locals 0
    .param p1, "digitVlineNumber"    # I

    .line 437
    iput p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->digitVlineNumber:I

    .line 438
    return-void
.end method

.method public setHomeDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "homeDomain"    # Ljava/lang/String;

    .line 389
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->homeDomain:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setIMPI(Ljava/lang/String;)V
    .locals 0
    .param p1, "IMPI"    # Ljava/lang/String;

    .line 385
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->IMPI:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public setIMPU(Ljava/lang/String;)V
    .locals 0
    .param p1, "IMPU"    # Ljava/lang/String;

    .line 381
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->IMPU:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .line 453
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->imei:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .line 413
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->instanceId:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public setIpVersion(I)V
    .locals 0
    .param p1, "ipVersion"    # I

    .line 377
    iput p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->ipVersion:I

    .line 378
    return-void
.end method

.method public setLocalAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "localAddress"    # Ljava/lang/String;

    .line 357
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->localAddress:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public setLocalPort(I)V
    .locals 0
    .param p1, "localPort"    # I

    .line 361
    iput p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->localPort:I

    .line 362
    return-void
.end method

.method public setPAccessNetworkInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "pAccessNetworkInfo"    # Ljava/lang/String;

    .line 421
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->pAccessNetworkInfo:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public setPAssociatedUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "pAssociatedUri"    # Ljava/lang/String;

    .line 409
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->pAssociatedUri:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setPIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "pIdentifier"    # Ljava/lang/String;

    .line 441
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->pIdentifier:Ljava/lang/String;

    .line 442
    return-void
.end method

.method public setPLastAccessNetworkInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "pLastAccessNetworkInfo"    # Ljava/lang/String;

    .line 425
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->pLastAccessNetworkInfo:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setPPreferredAssociation(Ljava/lang/String;)V
    .locals 0
    .param p1, "pPreferredAssociation"    # Ljava/lang/String;

    .line 445
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->pPreferredAssociation:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setPortS(I)V
    .locals 0
    .param p1, "portS"    # I

    .line 397
    iput p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->portS:I

    .line 398
    return-void
.end method

.method public setProtocol(I)V
    .locals 0
    .param p1, "protocol"    # I

    .line 373
    iput p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->protocol:I

    .line 374
    return-void
.end method

.method public setProxyAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyAddress"    # Ljava/lang/String;

    .line 365
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->proxyAddress:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setProxyPort(I)V
    .locals 0
    .param p1, "proxyPort"    # I

    .line 369
    iput p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->proxyPort:I

    .line 370
    return-void
.end method

.method public setPublicGruu(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicGruu"    # Ljava/lang/String;

    .line 429
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->publicGruu:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setRegRcsFeatureTags(I)V
    .locals 0
    .param p1, "regRcsFeatureTags"    # I

    .line 449
    iput p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->regRcsFeatureTags:I

    .line 450
    return-void
.end method

.method public setSecurityVerify(Ljava/lang/String;)V
    .locals 0
    .param p1, "security_verify"    # Ljava/lang/String;

    .line 405
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->security_verify:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setServiceRoute(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceRoute"    # Ljava/lang/String;

    .line 417
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->serviceRoute:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public setTempGruu(Ljava/lang/String;)V
    .locals 0
    .param p1, "tempGruu"    # Ljava/lang/String;

    .line 433
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->tempGruu:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 393
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->userAgent:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setViaPort(I)V
    .locals 0
    .param p1, "viaPort"    # I

    .line 401
    iput p1, p0, Lcom/mediatek/ims/rcsua/Configuration;->viaPort:I

    .line 402
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Configuration->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "localAddress["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/Configuration;->localAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v2, "localPort["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->localPort:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v2, "proxyAddress["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->proxyAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v2, "proxyPort["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->proxyPort:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v2, "protocol["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->protocol:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v2, "ipVersion["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->ipVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v2, "IMPU["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->IMPU:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v2, "IMPI["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->IMPI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v2, "homeDomain["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->homeDomain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v2, "userAgent["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v2, "port_s["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->portS:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v2, "viaPort["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->viaPort:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v2, "security_verify["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->security_verify:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v2, "pAssociatedUri["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->pAssociatedUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v2, "instanceId["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->instanceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v2, "serviceRoute["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->serviceRoute:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v2, "pAccessNetworkInfo["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->pAccessNetworkInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v2, "pLastAccessNetworkInfo["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->pLastAccessNetworkInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v2, "publicGruu["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->publicGruu:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v2, "tempGruu["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->tempGruu:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, "regRcsFeatureTags["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget v1, p0, Lcom/mediatek/ims/rcsua/Configuration;->regRcsFeatureTags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v2, "imei["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Configuration;->imei:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 463
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->localAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    iget v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->localPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->proxyAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    iget v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->proxyPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->protocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->ipVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->IMPU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->IMPI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->homeDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->userAgent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 473
    iget v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->portS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->viaPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->security_verify:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pAssociatedUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->instanceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->serviceRoute:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pAccessNetworkInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pLastAccessNetworkInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->publicGruu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->tempGruu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 483
    iget v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->digitVlineNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->pPreferredAssociation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 486
    iget v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->regRcsFeatureTags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Configuration;->imei:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 488
    return-void
.end method
