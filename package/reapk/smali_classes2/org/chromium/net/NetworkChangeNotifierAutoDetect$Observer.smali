.class public interface abstract Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onConnectionTypeChanged(I)V
.end method

.method public abstract onMaxBandwidthChanged(D)V
.end method

.method public abstract onNetworkConnect(II)V
.end method

.method public abstract onNetworkDisconnect(I)V
.end method

.method public abstract onNetworkSoonToDisconnect(I)V
.end method

.method public abstract purgeActiveNetworkList([I)V
.end method
