.class final Lrx/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->a(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/h;

.field final synthetic b:J

.field final synthetic c:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lrx/h;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lrx/b$4;->a:Lrx/h;

    iput-wide p2, p0, Lrx/b$4;->b:J

    iput-object p4, p0, Lrx/b$4;->c:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 6
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 803
    new-instance v0, Lrx/i/c;

    invoke-direct {v0}, Lrx/i/c;-><init>()V

    .line 804
    .local v0, "mad":Lrx/i/c;
    invoke-interface {p1, v0}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 805
    invoke-virtual {v0}, Lrx/i/c;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 806
    iget-object v2, p0, Lrx/b$4;->a:Lrx/h;

    invoke-virtual {v2}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v1

    .line 807
    .local v1, "w":Lrx/h$a;
    invoke-virtual {v0, v1}, Lrx/i/c;->a(Lrx/m;)V

    .line 808
    new-instance v2, Lrx/b$4$1;

    invoke-direct {v2, p0, p1, v1}, Lrx/b$4$1;-><init>(Lrx/b$4;Lrx/d;Lrx/h$a;)V

    iget-wide v4, p0, Lrx/b$4;->b:J

    iget-object v3, p0, Lrx/b$4;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    .line 819
    .end local v1    # "w":Lrx/h$a;
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 800
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/b$4;->a(Lrx/d;)V

    return-void
.end method
