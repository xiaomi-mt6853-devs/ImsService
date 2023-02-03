.class public interface abstract Lcom/mediatek/ims/rcsua/service/ISipEventCallback;
.super Ljava/lang/Object;
.source "ISipEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;,
        Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.rcsua.service.ISipEventCallback"


# virtual methods
.method public abstract messageReceived(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
