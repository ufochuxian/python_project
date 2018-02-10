.class abstract Lrx/internal/util/a/ab;
.super Lrx/internal/util/a/ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/a/ad",
        "<TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/n;
.end annotation


# static fields
.field protected static final v:J


# instance fields
.field protected consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-class v0, Lrx/internal/util/a/ab;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Lrx/internal/util/a/an;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/util/a/ab;->v:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/util/a/ab;, "Lrx/internal/util/a/ab<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/a/ad;-><init>(I)V

    .line 66
    return-void
.end method
