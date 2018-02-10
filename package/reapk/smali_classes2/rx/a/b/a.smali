.class public final Lrx/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/a/b/a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static a()Lrx/h;
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lrx/a/a/a;->a()Lrx/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lrx/a/a/a;->c()Lrx/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lrx/a/a/b;->b()Lrx/h;

    move-result-object v0

    .line 39
    .local v0, "scheduler":Lrx/h;
    if-eqz v0, :cond_0

    .end local v0    # "scheduler":Lrx/h;
    :goto_0
    return-object v0

    .restart local v0    # "scheduler":Lrx/h;
    :cond_0
    sget-object v0, Lrx/a/b/a$a;->a:Lrx/h;

    goto :goto_0
.end method
