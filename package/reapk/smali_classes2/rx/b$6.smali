.class Lrx/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:[Ljava/lang/Throwable;

.field final synthetic c:Lrx/b;


# direct methods
.method constructor <init>(Lrx/b;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1037
    iput-object p1, p0, Lrx/b$6;->c:Lrx/b;

    iput-object p2, p0, Lrx/b$6;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lrx/b$6;->b:[Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lrx/b$6;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1042
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1046
    iget-object v0, p0, Lrx/b$6;->b:[Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1047
    iget-object v0, p0, Lrx/b$6;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1048
    return-void
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 0
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 1053
    return-void
.end method
