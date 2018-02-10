.class abstract Lrx/internal/util/a/y;
.super Lrx/internal/util/a/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/a/w",
        "<TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/n;
.end annotation


# instance fields
.field private volatile Z:J


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/util/a/y;, "Lrx/internal/util/a/y<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/a/w;-><init>(I)V

    .line 94
    return-void
.end method


# virtual methods
.method protected final c()J
    .locals 2

    .prologue
    .line 97
    .local p0, "this":Lrx/internal/util/a/y;, "Lrx/internal/util/a/y<TE;>;"
    iget-wide v0, p0, Lrx/internal/util/a/y;->Z:J

    return-wide v0
.end method

.method protected final e(J)V
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/util/a/y;, "Lrx/internal/util/a/y<TE;>;"
    iput-wide p1, p0, Lrx/internal/util/a/y;->Z:J

    .line 102
    return-void
.end method
