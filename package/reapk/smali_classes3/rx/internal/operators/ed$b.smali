.class final Lrx/internal/operators/ed$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lrx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/g;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x10e280be328ab0acL


# instance fields
.field final a:Lrx/internal/operators/ed$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/ed$a",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/ed$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/ed$a",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lrx/internal/operators/ed$b;, "Lrx/internal/operators/ed$b<TR;>;"
    .local p1, "zipper":Lrx/internal/operators/ed$a;, "Lrx/internal/operators/ed$a<TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 156
    iput-object p1, p0, Lrx/internal/operators/ed$b;->a:Lrx/internal/operators/ed$a;

    .line 157
    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 161
    .local p0, "this":Lrx/internal/operators/ed$b;, "Lrx/internal/operators/ed$b<TR;>;"
    invoke-static {p0, p1, p2}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 163
    iget-object v0, p0, Lrx/internal/operators/ed$b;->a:Lrx/internal/operators/ed$a;

    invoke-virtual {v0}, Lrx/internal/operators/ed$a;->a()V

    .line 164
    return-void
.end method
