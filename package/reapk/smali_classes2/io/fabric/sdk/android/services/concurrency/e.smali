.class public abstract Lio/fabric/sdk/android/services/concurrency/e;
.super Lio/fabric/sdk/android/services/concurrency/i;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/concurrency/i;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/e;, "Lio/fabric/sdk/android/services/concurrency/e<TV;>;"
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/i;-><init>()V

    return-void
.end method
