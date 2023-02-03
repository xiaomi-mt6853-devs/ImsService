.class public interface abstract Lcom/mediatek/presence/service/api/IMtkPresenceService;
.super Ljava/lang/Object;
.source "IMtkPresenceService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/presence/service/api/IMtkPresenceService$Stub;,
        Lcom/mediatek/presence/service/api/IMtkPresenceService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.presence.service.api.IMtkPresenceService"


# virtual methods
.method public abstract getContactListCapAosp(Ljava/util/List;ILandroid/telephony/ims/aidl/ISubscribeResponseCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I",
            "Landroid/telephony/ims/aidl/ISubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract publishMyCap(Ljava/lang/String;ILandroid/telephony/ims/aidl/IPublishResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRcsCapabilityExchangeAvailable(ZLandroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
