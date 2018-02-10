.class final Lrx/h/d$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrx/g;
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/g;",
        "Lrx/m;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4579a11aac8dacd7L


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicLong;

.field final c:Lrx/h/d$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h/d$e",
            "<TT;>;"
        }
    .end annotation
.end field

.field d:I

.field e:I

.field f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lrx/l;Lrx/h/d$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;",
            "Lrx/h/d$e",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1248
    .local p0, "this":Lrx/h/d$b;, "Lrx/h/d$b<TT;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TT;>;"
    .local p2, "state":Lrx/h/d$e;, "Lrx/h/d$e<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 1249
    iput-object p1, p0, Lrx/h/d$b;->a:Lrx/l;

    .line 1250
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/h/d$b;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1251
    iput-object p2, p0, Lrx/h/d$b;->c:Lrx/h/d$e;

    .line 1252
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 1261
    .local p0, "this":Lrx/h/d$b;, "Lrx/h/d$b<TT;>;"
    iget-object v0, p0, Lrx/h/d$b;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/h/d$b;, "Lrx/h/d$b<TT;>;"
    const-wide/16 v2, 0x0

    .line 1266
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 1267
    iget-object v0, p0, Lrx/h/d$b;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 1268
    iget-object v0, p0, Lrx/h/d$b;->c:Lrx/h/d$e;

    iget-object v0, v0, Lrx/h/d$e;->a:Lrx/h/d$a;

    invoke-interface {v0, p0}, Lrx/h/d$a;->a(Lrx/h/d$b;)V

    .line 1272
    :cond_0
    return-void

    .line 1269
    :cond_1
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 1270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 1256
    .local p0, "this":Lrx/h/d$b;, "Lrx/h/d$b<TT;>;"
    iget-object v0, p0, Lrx/h/d$b;->c:Lrx/h/d$e;

    invoke-virtual {v0, p0}, Lrx/h/d$e;->b(Lrx/h/d$b;)V

    .line 1257
    return-void
.end method
