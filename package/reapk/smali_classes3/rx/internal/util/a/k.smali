.class abstract Lrx/internal/util/a/k;
.super Lrx/internal/util/a/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/a/m",
        "<TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/n;
.end annotation


# static fields
.field private static final v:J


# instance fields
.field private volatile consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-class v0, Lrx/internal/util/a/k;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Lrx/internal/util/a/an;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/util/a/k;->v:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/util/a/k;, "Lrx/internal/util/a/k<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/a/m;-><init>(I)V

    .line 66
    return-void
.end method


# virtual methods
.method protected final a()J
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/util/a/k;, "Lrx/internal/util/a/k<TE;>;"
    iget-wide v0, p0, Lrx/internal/util/a/k;->consumerIndex:J

    return-wide v0
.end method

.method protected final b(JJ)Z
    .locals 9
    .param p1, "expect"    # J
    .param p3, "newValue"    # J

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/util/a/k;, "Lrx/internal/util/a/k<TE;>;"
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/a/k;->v:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method
