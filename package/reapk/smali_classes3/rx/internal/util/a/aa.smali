.class abstract Lrx/internal/util/a/aa;
.super Lrx/internal/util/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/a/f",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final v:Ljava/lang/Integer;


# instance fields
.field protected final u:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lrx/internal/util/a/aa;->v:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/util/a/aa;, "Lrx/internal/util/a/aa<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/a/f;-><init>(I)V

    .line 28
    div-int/lit8 v0, p1, 0x4

    sget-object v1, Lrx/internal/util/a/aa;->v:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lrx/internal/util/a/aa;->u:I

    .line 29
    return-void
.end method
