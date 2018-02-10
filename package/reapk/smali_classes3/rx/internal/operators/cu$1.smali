.class Lrx/internal/operators/cu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cu;-><init>(Ljava/lang/Object;Lrx/c/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/o",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/cu$1;, "Lrx/internal/operators/cu.1;"
    iput-object p1, p0, Lrx/internal/operators/cu$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/cu$1;, "Lrx/internal/operators/cu.1;"
    iget-object v0, p0, Lrx/internal/operators/cu$1;->a:Ljava/lang/Object;

    return-object v0
.end method
