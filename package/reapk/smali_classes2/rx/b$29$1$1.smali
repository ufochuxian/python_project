.class Lrx/b$29$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b$29$1;->onSubscribe(Lrx/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/m;

.field final synthetic b:Lrx/b$29$1;


# direct methods
.method constructor <init>(Lrx/b$29$1;Lrx/m;)V
    .locals 0

    .prologue
    .line 2352
    iput-object p1, p0, Lrx/b$29$1$1;->b:Lrx/b$29$1;

    iput-object p2, p0, Lrx/b$29$1$1;->a:Lrx/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 2355
    iget-object v1, p0, Lrx/b$29$1$1;->b:Lrx/b$29$1;

    iget-object v1, v1, Lrx/b$29$1;->b:Lrx/b$29;

    iget-object v1, v1, Lrx/b$29;->a:Lrx/h;

    invoke-virtual {v1}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v0

    .line 2356
    .local v0, "w":Lrx/h$a;
    new-instance v1, Lrx/b$29$1$1$1;

    invoke-direct {v1, p0, v0}, Lrx/b$29$1$1$1;-><init>(Lrx/b$29$1$1;Lrx/h$a;)V

    invoke-virtual {v0, v1}, Lrx/h$a;->a(Lrx/c/b;)Lrx/m;

    .line 2366
    return-void
.end method
