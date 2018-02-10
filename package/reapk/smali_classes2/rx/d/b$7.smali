.class Lrx/d/b$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/b;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/BlockingQueue;

.field final synthetic b:Lrx/d/b;


# direct methods
.method constructor <init>(Lrx/d/b;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .prologue
    .line 586
    .local p0, "this":Lrx/d/b$7;, "Lrx/d/b.7;"
    iput-object p1, p0, Lrx/d/b$7;->b:Lrx/d/b;

    iput-object p2, p0, Lrx/d/b$7;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 589
    .local p0, "this":Lrx/d/b$7;, "Lrx/d/b.7;"
    iget-object v0, p0, Lrx/d/b$7;->a:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lrx/d/b;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 590
    return-void
.end method
