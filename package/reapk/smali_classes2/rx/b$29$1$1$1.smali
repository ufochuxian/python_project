.class Lrx/b$29$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b$29$1$1;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/h$a;

.field final synthetic b:Lrx/b$29$1$1;


# direct methods
.method constructor <init>(Lrx/b$29$1$1;Lrx/h$a;)V
    .locals 0

    .prologue
    .line 2356
    iput-object p1, p0, Lrx/b$29$1$1$1;->b:Lrx/b$29$1$1;

    iput-object p2, p0, Lrx/b$29$1$1$1;->a:Lrx/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 2360
    :try_start_0
    iget-object v0, p0, Lrx/b$29$1$1$1;->b:Lrx/b$29$1$1;

    iget-object v0, v0, Lrx/b$29$1$1;->a:Lrx/m;

    invoke-interface {v0}, Lrx/m;->unsubscribe()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2362
    iget-object v0, p0, Lrx/b$29$1$1$1;->a:Lrx/h$a;

    invoke-virtual {v0}, Lrx/h$a;->unsubscribe()V

    .line 2364
    return-void

    .line 2362
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/b$29$1$1$1;->a:Lrx/h$a;

    invoke-virtual {v1}, Lrx/h$a;->unsubscribe()V

    throw v0
.end method
