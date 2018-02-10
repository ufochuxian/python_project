.class Lrx/internal/operators/cm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cm;->a(Lrx/l;)Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic b:Lrx/internal/operators/cm;


# direct methods
.method constructor <init>(Lrx/internal/operators/cm;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/cm$1;, "Lrx/internal/operators/cm.1;"
    iput-object p1, p0, Lrx/internal/operators/cm$1;->b:Lrx/internal/operators/cm;

    iput-object p2, p0, Lrx/internal/operators/cm$1;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/cm$1;, "Lrx/internal/operators/cm.1;"
    iget-object v0, p0, Lrx/internal/operators/cm$1;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 62
    return-void
.end method
