.class public final Lrx/internal/operators/au$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/p",
        "<",
        "Lrx/e",
        "<+",
        "Lrx/Notification",
        "<*>;>;",
        "Lrx/e",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "count"    # J

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-wide p1, p0, Lrx/internal/operators/au$a;->a:J

    .line 71
    return-void
.end method


# virtual methods
.method public a(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+",
            "Lrx/Notification",
            "<*>;>;)",
            "Lrx/e",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "ts":Lrx/e;, "Lrx/e<+Lrx/Notification<*>;>;"
    new-instance v0, Lrx/internal/operators/au$a$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/au$a$1;-><init>(Lrx/internal/operators/au$a;)V

    invoke-virtual {p1, v0}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->j()Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, Lrx/e;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/au$a;->a(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method
