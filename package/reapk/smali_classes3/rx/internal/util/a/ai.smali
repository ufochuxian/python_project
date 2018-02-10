.class abstract Lrx/internal/util/a/ai;
.super Lrx/internal/util/a/ak;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/a/ak",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected b:J

.field protected c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/util/a/ai;, "Lrx/internal/util/a/ai<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/a/ak;-><init>()V

    return-void
.end method
