.class public Lcom/mob/a/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/mob/a/e/a;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method
