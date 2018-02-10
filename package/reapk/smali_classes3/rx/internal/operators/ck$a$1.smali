.class Lrx/internal/operators/ck$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/ck$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/ck$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/ck$a;)V
    .locals 0

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/operators/ck$a$1;, "Lrx/internal/operators/ck$a.1;"
    iput-object p1, p0, Lrx/internal/operators/ck$a$1;->a:Lrx/internal/operators/ck$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 143
    .local p0, "this":Lrx/internal/operators/ck$a$1;, "Lrx/internal/operators/ck$a.1;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 144
    iget-object v0, p0, Lrx/internal/operators/ck$a$1;->a:Lrx/internal/operators/ck$a;

    iget-object v0, v0, Lrx/internal/operators/ck$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 145
    iget-object v0, p0, Lrx/internal/operators/ck$a$1;->a:Lrx/internal/operators/ck$a;

    invoke-virtual {v0}, Lrx/internal/operators/ck$a;->b()V

    .line 147
    :cond_0
    return-void
.end method
