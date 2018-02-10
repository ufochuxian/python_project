.class final Lrx/i/d$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x61397aaf32b333bbL


# instance fields
.field final a:Lrx/i/d;


# direct methods
.method public constructor <init>(Lrx/i/d;)V
    .locals 0
    .param p1, "parent"    # Lrx/i/d;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 134
    iput-object p1, p0, Lrx/i/d$a;->a:Lrx/i/d;

    .line 135
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lrx/i/d$a;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/i/d$a;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lrx/i/d$a;->a:Lrx/i/d;

    invoke-virtual {v0}, Lrx/i/d;->b()V

    .line 141
    :cond_0
    return-void
.end method
