.class final Lrx/internal/operators/bv$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/bv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Lrx/internal/operators/bv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/bv",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lrx/internal/operators/bv;

    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/internal/operators/bv;-><init>(Lrx/c/p;)V

    sput-object v0, Lrx/internal/operators/bv$a;->a:Lrx/internal/operators/bv;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
