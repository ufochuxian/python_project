.class abstract Lrx/internal/util/a/af;
.super Lrx/internal/util/a/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/a/ac",
        "<TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/n;
.end annotation


# static fields
.field protected static final ap:J


# instance fields
.field protected aq:J

.field protected producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lrx/internal/util/a/af;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lrx/internal/util/a/an;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/util/a/af;->ap:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/util/a/af;, "Lrx/internal/util/a/af<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/a/ac;-><init>(I)V

    .line 48
    return-void
.end method
