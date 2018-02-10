.class public interface abstract Lrx/Emitter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Emitter$BackpressureMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/f",
        "<TT;>;"
    }
.end annotation

.annotation build Lrx/b/b;
.end annotation


# virtual methods
.method public abstract requested()J
.end method

.method public abstract setCancellation(Lrx/c/n;)V
.end method

.method public abstract setSubscription(Lrx/m;)V
.end method
