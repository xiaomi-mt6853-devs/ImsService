.class public abstract Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
.super Lcom/mediatek/ims/rcsua/AppCallback;
.source "SipChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/SipChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EventCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$Runner;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/AppCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived([B)V
    .locals 0
    .param p1, "message"    # [B

    .line 173
    return-void
.end method
