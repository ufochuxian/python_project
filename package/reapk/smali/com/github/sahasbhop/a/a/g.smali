.class public Lcom/github/sahasbhop/a/a/g;
.super Lcom/nostra13/universalimageloader/core/d;
.source "SourceFile"


# static fields
.field private static a:Lcom/github/sahasbhop/a/a/g;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;-><init>()V

    return-void
.end method

.method public static a()Lcom/github/sahasbhop/a/a/g;
    .locals 2

    .prologue
    .line 10
    sget-object v0, Lcom/github/sahasbhop/a/a/g;->a:Lcom/github/sahasbhop/a/a/g;

    if-nez v0, :cond_1

    .line 11
    const-class v1, Lcom/github/sahasbhop/a/b;

    monitor-enter v1

    .line 12
    :try_start_0
    sget-object v0, Lcom/github/sahasbhop/a/a/g;->a:Lcom/github/sahasbhop/a/a/g;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/github/sahasbhop/a/a/g;

    invoke-direct {v0}, Lcom/github/sahasbhop/a/a/g;-><init>()V

    sput-object v0, Lcom/github/sahasbhop/a/a/g;->a:Lcom/github/sahasbhop/a/a/g;

    .line 15
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_1
    sget-object v0, Lcom/github/sahasbhop/a/a/g;->a:Lcom/github/sahasbhop/a/a/g;

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
