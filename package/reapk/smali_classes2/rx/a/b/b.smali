.class public final Lrx/a/b/b;
.super Lrx/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/a/b/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 37
    invoke-direct {p0}, Lrx/h;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/a/b/b;->a:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method public static a(Landroid/os/Handler;)Lrx/a/b/b;
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 31
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    new-instance v0, Lrx/a/b/b;

    invoke-direct {v0, p0}, Lrx/a/b/b;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public createWorker()Lrx/h$a;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lrx/a/b/b$a;

    iget-object v1, p0, Lrx/a/b/b;->a:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lrx/a/b/b$a;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
